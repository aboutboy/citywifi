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

#define MATCHBUF "GET / HTTP/"		//ƥ���ַ���
#define MATCHBUFSIZE 11				//ƥ���ַ�������
#define INSERTBUFBEGIN 5			//��������λ��

#define LOGINMACHEADER "?loginmac="
#define LOGINMACHEADERBEGIN 0
#define LOGINMACHEADERSIZE 10

#define NEWBUFSIZE LOGINMACHEADERSIZE + MAC_BUF_SIZE	//LOGINMACHEADERSIZE����PORTBUFSIZE��ȡLOGINMACHEADERSIZE

#define MACBUFBEGIN NEWBUFSIZE-MAC_BUF_SIZE

#define LOGINMACBUFSIZE NEWBUFSIZE-1	//MAC��ַ����'\0'��Ҫ

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
	bool isPushData; //�Ƿ���������ı���
	bool isC2S;		//�Ƿ񷢸��������ı���

	isPushData = false;
	isC2S = false;
	iph = neth_hdr = tcph = payload = ct = newbuf = NULL;

	if(skb == NULL) {
        return NF_ACCEPT;
    }

    //Note that the connection tracking subsystem
    //is invoked after the raw table has been processed, but before the mangle table.
    //�������� Ҫָ��.priority = NF_IP_PRI_MANGLE nf_ct_get �Ż᷵����Ч��ֵ
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

	tcph = (void *) iph + iph->ihl * 4; //����skb_header_pointer ����̫�����������½�
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
		return NF_ACCEPT;	//���˵�TCP�������ֵ�ǰ����
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

	//�ߵ�����˵����TCP�������ֺ�ı���

	if((iph->saddr == in_aton(SERVER_IP) && likely(ntohs(tcph->source) == SERVER_PORT))) {
		//newbuf = (char *)kmalloc(NEWBUFSIZE, GFP_ATOMIC);
		//print_mac(newbuf+MACBUFBEGIN, neth_hdr->h_dest);
	} else if(iph->daddr == in_aton(SERVER_IP) && likely(ntohs(tcph->dest) == SERVER_PORT)) {
		isC2S = true;
	} else{
		return NF_ACCEPT;
	}

	//�ߵ�����˵���Ǻͷ�����ͨ�ŵı���

	if(tcph->syn == 1) {
		/*if(tcph->ack == 0) {
			printk("syn packet !");
		} else{
			printk("syn ack packet !");
		}*/
		//return NF_ACCEPT;	//��TCP���������ֲ�����
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

	//�����������ı��ģ��Ұ��������������£��ж��Ƿ��������
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
	     	�� ��һ���ܹؼ������������� ��ͷƫ�Ƽ������payload �õ�����������ȷ�İ��ṹ
	     	��2.6�ں���Ҫ��ô���� ��Ϊ�µ�ϵͳ����Ϊ��������ܣ�һ��������������Ƿֳɼ��� fragments�������
	     * ��ʱ �������� skb->data�õ���ֻ�ǰ��ĵ�һ�� fragments�Ķ������Ҽ�����ϵͳ�ϵľ���tcpͷ���� tcp��payload
	     * �Ƿֿ������ڲ�ͬ�ĵط��ġ�����ip,tcpͷ�����Ǻ���ϵͳ��ż��ϵģ���Ӧ�ó����payload��Դ��һ����ʹ�ò�ͬ��fragments��
	     * ���Ա��⸴�����ݵ��»������Ĳ���������ܡ�skb_shinfo(skb)->nr_frags ����ָ�������skb�������������˶��ٿ� fragment�ˡ�
	     * ������Կ� ��Linux Device Drivers, 3rd Editio��һ���17.5.3. Scatter/Gather I/OС��
	     * ��Understanding_Linux_Network_Internals�� һ�� Chapter 21. Internet Protocol Version 4 (IPv4): Transmission һ���зǳ���ϸ�Ľ���
	     * ����ʹ�õ�skb_linearize ��������Լ򵥵İ� �����frag�ϲ���һ���ˣ���Ϊ�˼򵥾���������
	     */
	    if (0 == skb_linearize(skb))
	    {
		    // payload = (void *)tcph + tcph->doff*4; skb_linearize(skb) ����֮��skb�����¹����ˣ�֮ǰ��tcpָ��Ĳ�����ȷ�ĵ�ַ�ˡ�
	    	payload = (void *)tcph + tcph->doff*4; //�ҵĻ�����tcph->doff*4 �� iph->ihl*4 ����40, ���Ǵ�data����ƫ�Ƴ�ǰ���ip��ͷ��tcp��ͷ
	    	//tcp ������ ntohs(iph->tot_len) - iph->ihl*4 - tcph->doff*4
	    	//hex_dump(payload ,ntohs(iph->tot_len) - iph->ihl*4 - tcph->doff*4);

			printk("\n-----------------tcp_packet--------------------\n%20s", payload);
							
		    if(strlen(payload) > 15)
		    {
				//�����������ݾͲ���
			    if (0 == strncmp(payload, MATCHBUF, MATCHBUFSIZE))
			    {
				    //�����ڴ������ʱ��������
				    newbuf = (char *)kmalloc(NEWBUFSIZE, GFP_ATOMIC);
				    
				    //����ԴMAC�Ž�������ڴ��
					print_mac(newbuf+MACBUFBEGIN, neth_hdr->h_source);

					//���������ַ����Ž�������ڴ��
					memcpy(newbuf+LOGINMACHEADERBEGIN, LOGINMACHEADER, LOGINMACHEADERSIZE);
					//printk("\nnewbuf+LOGINMACHEADERBEGIN: %s\n", (char *)(newbuf+LOGINMACHEADERBEGIN));
					//goto process_end;

					//wineshark ץ��˵������tcp���������Ȼ���ԣ�ԭ�����޸ĺ�tcp����Ҫ���� ���ӵ��ֽڣ���ϵͳ��֪������ı䣬�����´λ�������ǰ�� ������������ݣ�
					//���Ժ���İ�����žͲ�����. ��/net/ipv4/tcp_output.c �е�tcp_transmit_skb�����У����Կ���ϵͳ�������д������ݵġ�����hook��ʱ���޷�
					//�õ�tcp�����Ϣ��������һ�����ݵİѳ�ʼ��Ÿ���ȷ�ĵ��޷�������ֻ��hookû������ʱ�򶼰���Ÿ��������ˡ�
					//nf_nat_mangle_tcp_packet�޸�tcp���󣬻��¼����Ҫ������seq�����У��ο��ں�Դ����/net/ipv4/netfilter/nf_nat_helper.c �ļ����������
					//adjust_tcp_sequence������������Ҫ��������Ϣ��¼������ struct nf_nat_seq�ṹ�����ˡ�����û�п����Զ��Ժ���������������д����ˡ�
					//������Ҫ�������hook����ѱ�ʶ��������Ҫ�޸���ŵİ���������һ��seq�޸�����nf_nat_seq_adjust���Ѻ�������tcp����seq�������޸���
					//��������������޸ĵ��°��ĳ��ȸı�Ķ���Ҫ����conntrackģ����������helper module��
					//nf_nat_seq_adjust_hook����������������ġ��ο� �ں�Դ����� /net/ipv4/netfilter/nf_conntrack_l3proto_ipv4.c �е�ipv4_confirm����
					//��û��������nf_nat_seq_adjust �����ĵط����������Լ��ּ�������hook������������������ʾ�ĵ���nf_nat_seq_adjust ������
					//nf_nat_seq_adjust ������net/ipv4/netfilter/nf_nat_helper.c �ļ��������У���û�е����������Ұ������ƹ����ˣ����� ע�ⲻͬ���ں˰Ȿ������ͬ
					//������������⣬��ȥ�Ѷ�Ӧ���ں�Դ�����еļ����������Ƴ����ɡ�
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
	
    //����nf_nat_seq_adjust����������nf_nat_mangle_tcp_packet ֮����ɵ�tcp�������кŲ������� 
 	//�����Ҫ���޸ĺ��˫��������϶�Ҫ���У�������Ҫhook˫��İɣ���nf_nat_mangle_tcp_packet 
 	//�е�����adjust_tcp_sequence֪ʶ��¼����Ӧ�������޸ġ�
 	//��Ϊnf_nat_mangle_tcp_packet  ����Ҫ�������������conntrack����IPS_SEQ_ADJUST_BIT��־�ˡ�
 	//���������ж��ǲ��������־�ͽ����޸ġ���֪����᲻�������nat helper moudle��ͻ���������Ҳ�������־ʱ�Ϳ��ܳ����ظ��޸ĵ����⣬��Ϊ�������ŵ����ṹ����ͨ�õġ�
 	//Ҳ����и�ϸ�µļ�飬�����conntrack��ct�ṹ���� ����Ψһ��status��־�ȽϺ�һ�㣬
 	//��������Ҫ��֤����Ҫ�޸���ŵİ�������ǰ����nf_nat_mangle_tcp_packet�޸Ĺ������ݵ��Ǹ����ӵģ����������������ӵİ���
 	//дһ��nat helper module���޸�tcp��Ҳ���������hook module��������޸ĸ����ʡ�ȥ����netfilter���ĵ�������
 	//��Ϊ��ȷ���Լ�ϵͳ  û������nat help module������Ϊ�˼򵥾����������޸��ˣ����Թ�û��ʲô���⡣
 	//����о�һ��nat conntrack����Щ���룬��Ҳ������������ϸ�ڡ�
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
