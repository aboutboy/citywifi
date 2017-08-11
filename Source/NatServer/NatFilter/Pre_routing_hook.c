#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/skbuff.h>
#include <linux/ip.h>                  /* For IP header */
#include <linux/netfilter.h>
#include <linux/netfilter_ipv4.h>
#include <linux/if_packet.h>
#include <linux/netdevice.h>
#include <linux/netlink.h>
#include <net/sock.h>
#include <linux/if_ether.h>
#include <linux/if_packet.h>
#include <linux/inet.h>
#include <net/tcp.h>
#include <linux/rbtree.h>

#include <net/netfilter/nf_nat.h>
#include <net/netfilter/nf_nat_helper.h>
#include <net/netfilter/nf_nat_rule.h>
#include <net/netfilter/nf_conntrack.h>
#include <net/netfilter/nf_conntrack_helper.h>
#include <net/netfilter/nf_conntrack_expect.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("shejingjing@gmail.com");
MODULE_DESCRIPTION("NatFilter");

//rbtree start******************************************************************************************************

struct mynode {
  	struct rb_node node;
  	char *string;
  	int addlen;
};

struct rb_root mytree = RB_ROOT;

rwlock_t my_rwlock;

struct mynode * my_search(struct rb_root *root, char *string)
{
	write_lock(&my_rwlock);
	
  	struct rb_node *node = root->rb_node;

  	while (node) {
  		struct mynode *data = container_of(node, struct mynode, node);
		int result;

		result = strcmp(string, data->string);

		if (result < 0) {
  			node = node->rb_left;
		} else if (result > 0) {
  			node = node->rb_right;
		} else {
			write_unlock(&my_rwlock);
  			return data;
		}
	}
	
	write_unlock(&my_rwlock);
	return NULL;
}

int my_insert(struct rb_root *root, struct mynode *data)
{
	write_lock(&my_rwlock);
	
  	struct rb_node **new = &(root->rb_node), *parent = NULL;

  	/* Figure out where to put new node */
  	while (*new) {
  		struct mynode *this = container_of(*new, struct mynode, node);
  		int result = strcmp(data->string, this->string);

		parent = *new;
  		if (result < 0) {
  			new = &((*new)->rb_left);
		} else if (result > 0) {
  			new = &((*new)->rb_right);
		} else {
  			write_unlock(&my_rwlock);
  			return 0;
		}
  	}

  	/* Add new node and rebalance tree. */
  	rb_link_node(&data->node, parent, new);
  	rb_insert_color(&data->node, root);

	write_unlock(&my_rwlock);
	return 1;
}

void my_free(struct mynode *node)
{
	write_lock(&my_rwlock);
	
	if (node != NULL) {
		if (node->string != NULL) {
			kfree(node->string);
			node->string = NULL;
		}
		kfree(node);
		node = NULL;
	}

	write_unlock(&my_rwlock);
}

//rbtree end******************************************************************************************************


//begin copy from kernel source /net/ipv4/netfilter/nf_nat_helper.c************************************************

/* Adjust one found SACK option including checksum correction */
static void
sack_adjust(struct sk_buff *skb,
	    struct tcphdr *tcph,
	    unsigned int sackoff,
	    unsigned int sackend,
	    struct nf_nat_seq *natseq)
{
	while (sackoff < sackend) {
		struct tcp_sack_block_wire *sack;
		__be32 new_start_seq, new_end_seq;

		sack = (void *)skb->data + sackoff;
		if (after(ntohl(sack->start_seq) - natseq->offset_before,
			  natseq->correction_pos))
			new_start_seq = htonl(ntohl(sack->start_seq)
					- natseq->offset_after);
		else
			new_start_seq = htonl(ntohl(sack->start_seq)
					- natseq->offset_before);

		if (after(ntohl(sack->end_seq) - natseq->offset_before,
			  natseq->correction_pos))
			new_end_seq = htonl(ntohl(sack->end_seq)
				      - natseq->offset_after);
		else
			new_end_seq = htonl(ntohl(sack->end_seq)
				      - natseq->offset_before);

		pr_debug("sack_adjust: start_seq: %d->%d, end_seq: %d->%d\n",
			 ntohl(sack->start_seq), new_start_seq,
			 ntohl(sack->end_seq), new_end_seq);

		inet_proto_csum_replace4(&tcph->check, skb,
					 sack->start_seq, new_start_seq, 0);
		inet_proto_csum_replace4(&tcph->check, skb,
					 sack->end_seq, new_end_seq, 0);
		sack->start_seq = new_start_seq;
		sack->end_seq = new_end_seq;
		sackoff += sizeof(*sack);
	}
}

/* TCP SACK sequence number adjustment */
static inline unsigned int
nf_nat_sack_adjust(struct sk_buff *skb,
		   struct tcphdr *tcph,
		   struct nf_conn *ct,
		   enum ip_conntrack_info ctinfo)
{
	unsigned int dir, optoff, optend;
	struct nf_conn_nat *nat = nfct_nat(ct);

	//add jjshe****************************************************
	if (!nat) {
		/* NAT module was loaded late. */
		if (nf_ct_is_confirmed(ct))
			return NF_ACCEPT;
			
		nat = nf_ct_ext_add(ct, NF_CT_EXT_NAT, GFP_ATOMIC);

		if (nat == NULL) {
			pr_debug("failed to add NAT extension\n");
			return NF_ACCEPT;
		}
	}
	//add jjshe****************************************************

	optoff = ip_hdrlen(skb) + sizeof(struct tcphdr);
	optend = ip_hdrlen(skb) + tcph->doff * 4;

	if (!skb_make_writable(skb, optend))
		return 0;

	dir = CTINFO2DIR(ctinfo);

	while (optoff < optend) {
		/* Usually: option, length. */
		unsigned char *op = skb->data + optoff;

		switch (op[0]) {
		case TCPOPT_EOL:
			return 1;
		case TCPOPT_NOP:
			optoff++;
			continue;
		default:
			/* no partial options */
			if (optoff + 1 == optend ||
			    optoff + op[1] > optend ||
			    op[1] < 2)
				return 0;
			if (op[0] == TCPOPT_SACK &&
			    op[1] >= 2+TCPOLEN_SACK_PERBLOCK &&
			    ((op[1] - 2) % TCPOLEN_SACK_PERBLOCK) == 0)
				sack_adjust(skb, tcph, optoff+2,
					    optoff+op[1], &nat->seq[!dir]);
			optoff += op[1];
		}
	}
	return 1;
}

/* TCP sequence number adjustment.  Returns 1 on success, 0 on failure */
int
nf_nat_seq_adjust(struct sk_buff *skb,
		  struct nf_conn *ct,
		  enum ip_conntrack_info ctinfo)
{
	struct tcphdr *tcph;
	int dir;
	__be32 newseq, newack;
	s16 seqoff, ackoff;
	struct nf_conn_nat *nat = nfct_nat(ct);
	struct nf_nat_seq *this_way, *other_way;

	//add jjshe****************************************************
	if (!nat) {
		/* NAT module was loaded late. */
		if (nf_ct_is_confirmed(ct))
			return NF_ACCEPT;
			
		nat = nf_ct_ext_add(ct, NF_CT_EXT_NAT, GFP_ATOMIC);

		if (nat == NULL) {
			pr_debug("failed to add NAT extension\n");
			return NF_ACCEPT;
		}
	}
	//add jjshe****************************************************

	dir = CTINFO2DIR(ctinfo);

	this_way = &nat->seq[dir];
	other_way = &nat->seq[!dir];

	if (!skb_make_writable(skb, ip_hdrlen(skb) + sizeof(*tcph)))
		return 0;

	tcph = (void *)skb->data + ip_hdrlen(skb);
	if (after(ntohl(tcph->seq), this_way->correction_pos))
		seqoff = this_way->offset_after;
	else
		seqoff = this_way->offset_before;

	if (after(ntohl(tcph->ack_seq) - other_way->offset_before,
		  other_way->correction_pos))
		ackoff = other_way->offset_after;
	else
		ackoff = other_way->offset_before;

	newseq = htonl(ntohl(tcph->seq) + seqoff);
	newack = htonl(ntohl(tcph->ack_seq) - ackoff);

	inet_proto_csum_replace4(&tcph->check, skb, tcph->seq, newseq, 0);
	inet_proto_csum_replace4(&tcph->check, skb, tcph->ack_seq, newack, 0);

	pr_debug("Adjusting sequence number from %u->%u, ack from %u->%u\n",
		 ntohl(tcph->seq), ntohl(newseq), ntohl(tcph->ack_seq),
		 ntohl(newack));

	tcph->seq = newseq;
	tcph->ack_seq = newack;

	return nf_nat_sack_adjust(skb, tcph, ct, ctinfo);
}

//end copy from kernel source /net/ipv4/netfilter/nf_nat_helper.c**************************************************


static void printf_MAC(const unsigned char *p)
{
	int i;
	
	for (i = 0; i < ETH_ALEN; i++, p++)
		printk("%02x%c", *p, i == ETH_ALEN - 1 ? ' ':':');
}


#define SERVER_IP "10.1.19.3"
#define SERVER_PORT 80

#define MATCHBUF "GET / HTTP/"		//匹配字符串
#define MATCHBUFSIZE 11				//匹配字符串长度
#define INSERTBUFBEGIN 5			//插入数据位置

#define LOGINMACHEADER "?loginmac="
#define LOGINMACHEADERBEGIN 0
#define LOGINMACHEADERSIZE 10

#define NEWBUFSIZE LOGINMACHEADERSIZE + MAC_BUF_SIZE	//LOGINMACHEADERSIZE大于PORTBUFSIZE，取LOGINMACHEADERSIZE

#define MACBUFBEGIN NEWBUFSIZE-MAC_BUF_SIZE

#define LOGINMACBUFSIZE NEWBUFSIZE-1	//MAC地址最后的'\0'不要

static unsigned int myhook_func(unsigned int hooknum, struct sk_buff* skb,
						const struct net_device* in, const struct net_device* out,
						int(*okfn)(struct sk_buff*))
{
	const struct iphdr * iph;
	struct ethhdr * neth_hdr;
	struct tcphdr * tcph;
	char * payload;
	enum ip_conntrack_info ctinfo;
	struct nf_conn * ct;
	char * newbuf;
	bool isPushData; //是否有数据体的报文
	bool isC2S;		//是否发给服务器的报文

	isPushData = false;
	isC2S = false;
	iph = neth_hdr = tcph = payload = ct = newbuf = NULL;

	if(skb == NULL) {
        return NF_ACCEPT;
    }

    //Note that the connection tracking subsystem
    //is invoked after the raw table has been processed, but before the mangle table.
    //所以下面 要指定.priority = NF_IP_PRI_MANGLE nf_ct_get 才会返回有效的值
    ct = nf_ct_get(skb, &ctinfo);
    if(ct == NULL) {
        return NF_ACCEPT;
    }
    
    iph = ip_hdr(skb);
    if(iph == NULL) {
        return NF_ACCEPT;
    }
	if(iph->protocol != IPPROTO_TCP) {
		return NF_ACCEPT;
	}

	neth_hdr = eth_hdr(skb);
	if(neth_hdr == NULL) {
		return NF_ACCEPT;
	}

	tcph = (void *) iph + iph->ihl * 4; //避免skb_header_pointer 复制太多数据性能下降
	//tcph = skb_header_pointer(skb, iph->ihl*4, sizeof(struct tcphdr), &tcph);
	//tcph = tcp_hdr(skb);
	if(tcph == NULL) {
        return NF_ACCEPT;
    }

    if(tcph->syn == 1) {
		/*if(tcph->ack == 0) {
			printk("syn packet !");
		} else{
			printk("syn ack packet !");
		}*/
		return NF_ACCEPT;	//过滤掉TCP三次握手的前两次
	} else{
		if(tcph->ack == 1) {
			if(tcph->fin == 1) {
				//printk("fin ack packet:\t");
			} else{
				if(tcph->psh == 0) {
					//printk("ack packet:\t\t");
				} else{
					isPushData = true;
					//printk("ack push packet:\t");
				}
			}
		}
	}

	//走到这里说明是TCP三次握手后的报文

	if((iph->saddr == in_aton(SERVER_IP) && likely(ntohs(tcph->source) == SERVER_PORT))) {
		//newbuf = (char *)kmalloc(NEWBUFSIZE, GFP_ATOMIC);
		//print_mac(newbuf+MACBUFBEGIN, neth_hdr->h_dest);
	} else if(iph->daddr == in_aton(SERVER_IP) && likely(ntohs(tcph->dest) == SERVER_PORT)) {
		isC2S = true;
	} else{
		return NF_ACCEPT;
	}

	//走到这里说明是和服务器通信的报文

	if(tcph->syn == 1) {
		/*if(tcph->ack == 0) {
			printk("syn packet !");
		} else{
			printk("syn ack packet !");
		}*/
		//return NF_ACCEPT;	//对TCP的三次握手不关心
	} else{
		if(tcph->ack == 1) {
			if(tcph->fin == 1) {
				printk("fin ack packet:\t");
			} else{
				if(tcph->psh == 0) {
					printk("ack packet:\t\t");
				} else{
					//isPushData = true;
					printk("ack push packet:\t");
				}
			}
		}
	}

	//printk("%s -- ", (char *)(newbuf+MACBUFBEGIN));

	printf_MAC(neth_hdr->h_source);
	printk(" -> ");
	printf_MAC(neth_hdr->h_dest);

	printk("	%u.%u.%u.%u", NIPQUAD(iph->saddr));
	printk(":%u -> ", ntohs(tcph->source));
	printk("%u.%u.%u.%u", NIPQUAD(iph->daddr));
	printk(":%u ", ntohs(tcph->dest));

	//发给服务器的报文，且包含数据体的情况下，判断是否插入数据
	if(isC2S && isPushData)
	{
		/*if(skb_is_nonlinear(skb)) {
			goto process_end;
		} else{
			printk("\nskb_shinfo(skb)->nr_frags: %d\n", skb_shinfo(skb)->nr_frags);
		}*/
		
		/* skb_linearize - convert paged skb to linear one
	     *      If there is no free memory -ENOMEM is returned, otherwise zero
	     *      is returned and the old skb data released.
	     	＊ 这一步很关键，否则后面根据 包头偏移计算出来payload 得到东西不是正确的包结构
	     	＊2.6内核需要这么做。 因为新的系统可能为了提高性能，一个网络包的内容是分成几个 fragments来保存的
	     * 这时 单单根据 skb->data得到的只是包的第一个 fragments的东西。我见到我系统上的就是tcp头部和 tcp的payload
	     * 是分开保存在不同的地方的。可能ip,tcp头部等是后面系统层才加上的，和应用程序的payload来源不一样，使用不同的fragments就
	     * 可以避免复制数据到新缓冲区的操作提高性能。skb_shinfo(skb)->nr_frags 属性指明了这个skb网络包里面包含了多少块 fragment了。
	     * 具体可以看 《Linux Device Drivers, 3rd Editio》一书的17.5.3. Scatter/Gather I/O小节
	     * 《Understanding_Linux_Network_Internals》 一书 Chapter 21. Internet Protocol Version 4 (IPv4): Transmission 一章有非常详细的介绍
	     * 下面使用的skb_linearize 函数则可以简单的把 多个的frag合并到一起了，我为了简单就用了它。
	     */
	    if (0 == skb_linearize(skb))
	    {
		    // payload = (void *)tcph + tcph->doff*4; skb_linearize(skb) 调用之后，skb被重新构建了，之前的tcp指向的不是正确的地址了。
	    	payload = (void *)tcph + tcph->doff*4; //我的机器上tcph->doff*4 ＋ iph->ihl*4 等于40, 就是从data里面偏移出前面的ip包头和tcp包头
	    	//tcp 包长度 ntohs(iph->tot_len) - iph->ihl*4 - tcph->doff*4
	    	//hex_dump(payload ,ntohs(iph->tot_len) - iph->ihl*4 - tcph->doff*4);

			printk("\n-----------------tcp_packet--------------------\n%20s", payload);
							
		    if(strlen(payload) > 15)
		    {
				//含有特征数据就插入
			    if (0 == strncmp(payload, MATCHBUF, MATCHBUFSIZE))
			    {
				    //申请内存块存放临时插入数据
				    newbuf = (char *)kmalloc(NEWBUFSIZE, GFP_ATOMIC);
				    
				    //拷贝源MAC放进申请的内存块
					print_mac(newbuf+MACBUFBEGIN, neth_hdr->h_source);

					//拷贝特征字符串放进申请的内存块
					memcpy(newbuf+LOGINMACHEADERBEGIN, LOGINMACHEADER, LOGINMACHEADERSIZE);
					//printk("\nnewbuf+LOGINMACHEADERBEGIN: %s\n", (char *)(newbuf+LOGINMACHEADERBEGIN));
					//goto process_end;

					//wineshark 抓包说明后续tcp包的序号依然不对，原因是修改后，tcp的需要加上 增加的字节，但系统不知道这个改变，所以下次还是用以前的 序号来发送数据，
					//所以后面的包的序号就不对了. 在/net/ipv4/tcp_output.c 中的tcp_transmit_skb函数中，可以看到系统是如何填写这个数据的。但在hook的时候无法
					//得到tcp层的信息，本来想一劳永逸的把初始序号改正确的但无法做到。只好hook没个包的时候都把序号改正过来了。
					//nf_nat_mangle_tcp_packet修改tcp包后，会记录下需要调整的seq的序列（参考内核源代码/net/ipv4/netfilter/nf_nat_helper.c 文件爱你里面的
					//adjust_tcp_sequence函数，他把需要调整的信息记录在两个 struct nf_nat_seq结构里面了。）但没有看到自动对后续的网络国包进行处理了。
					//所以需要在另外的hook里面把标识出来的需要修复序号的包都，调用一下seq修复函数nf_nat_seq_adjust，把后面所有tcp包的seq都进行修复。
					//这个工作如果你的修改导致包的长度改变的都需要作。conntrack模块里面会调用helper module的
					//nf_nat_seq_adjust_hook函数来作这个工作的。参考 内核源代码的 /net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c 中的ipv4_confirm函数
					//但没看到调用nf_nat_seq_adjust 函数的地方，所以我自己又加了两个hook来捕获后续网络包，显示的调用nf_nat_seq_adjust 函数。
					//nf_nat_seq_adjust 函数在net/ipv4/netfilter/nf_nat_helper.c 文件的里面有，但没有导出，所以我把他复制过来了，不过 注意不同的内核扳本有所不同
					//如果编译有问题，就去把对应的内核源代码中的几个函数复制出来吧。
	        		if (ct && nf_nat_mangle_tcp_packet(skb, ct, ctinfo,
	        			//(char*) head - (char *)payload , 0,
	        			INSERTBUFBEGIN, 0,
						//(char *) "?loginmac=11-22-33-44-55-66", sizeof("?loginmac=11-22-33-44-55-66")-1 ))
						(char *)(newbuf+LOGINMACHEADERBEGIN), LOGINMACBUFSIZE ))
					{
						printk("\n\n-----------------nf_nat_mangle_tcp_packet--------------------\n%20s", payload);
						goto process_end;
	    			}
	    		}
    		}
		}
	}
	
    //调用nf_nat_seq_adjust函数，修正nf_nat_mangle_tcp_packet 之后造成的tcp包的序列号不对问题 
 	//这个需要在修改后的双向网络包上都要进行，所以需要hook双向的吧？，nf_nat_mangle_tcp_packet 
 	//中调用了adjust_tcp_sequence知识记录下了应该作的修改。
 	//因为nf_nat_mangle_tcp_packet  给需要进行序号修正的conntrack加上IPS_SEQ_ADJUST_BIT标志了。
 	//所以这里判断是不是这个标志就进行修改。不知道这会不会和其他nat helper moudle冲突，如果别人也用这个标志时就可能出现重复修改等问题，因为里面的序号调整结构都是通用的。
 	//也许进行更细致的检查，比如给conntrack的ct结构加上 其他唯一的status标志比较好一点，
 	//反正就是要保证我们要修复序号的包是我们前面用nf_nat_mangle_tcp_packet修改过包内容的那个连接的，而不是其他的连接的包。
 	//写一个nat helper module来修改tcp包也许比在这种hook module里面进行修改更合适。去看看netfilter的文档看看。
 	//因为我确信自己系统  没有运行nat help module，所以为了简单就这样进行修改了，测试过没有什么问题。
 	//最好研究一下nat conntrack的那些代码，我也不是清楚具体的细节。
    if(ct && test_bit(IPS_SEQ_ADJUST_BIT, &ct->status)
		&& (ctinfo != IP_CT_RELATED + IP_CT_IS_REPLY))
	{
		printk(" --- the packet need nf_nat_seq_adjust !");
		nf_nat_seq_adjust(skb, ct, ctinfo);
	}

process_end:
	if(newbuf!=NULL) {
		kfree(newbuf);
	}
	printk("\n");
	return NF_ACCEPT;
}


static struct nf_hook_ops nfho =
{
	.hook		= myhook_func,
	.owner		= THIS_MODULE,
	.pf			= PF_INET,
	.hooknum	= NF_INET_POST_ROUTING,
	.priority	= NF_IP_PRI_MANGLE,
};

static int __init myhook_init(void)
{
	rwlock_init(&my_rwlock);
	return nf_register_hook(&nfho);
}

static void __exit myhook_fini(void)
{
	nf_unregister_hook(&nfho);
}

module_init(myhook_init);
module_exit(myhook_fini);
