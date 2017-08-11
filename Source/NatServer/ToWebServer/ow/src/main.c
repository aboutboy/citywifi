#include<stdio.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<unistd.h>
#include<stdlib.h>
#include<errno.h>
#include<arpa/inet.h>
#include<netinet/in.h>
#include<string.h>
#include<signal.h>
#include<sys/wait.h>

#include <stdio.h>
#include <sys/types.h>
#include <sys/param.h>

#include <sys/ioctl.h>
#include <net/if.h>
#include <netinet/in.h>
#include <net/if_arp.h>


#define ERR_EXIT(m) \
    do { \
        perror(m); \
        exit(EXIT_FAILURE); \
    } while (0)

char * SendDataBegin = "HTTP/1.0 302 Moved Temporarily\r\nAllow: GET,POST,HEAD\r\nMIME-Version: 1.0\r\nServer: NetEngine Server 1.0\r\nPragma: No-Cache\r\nLocation: ";

char * SendDataEnd = "\r\n\r\n\0";


#define MAX_RECVBUF_LEN 1024
#define MAX_ARP_DEV_LEN 12
#define MAX_AUTH_URL_LEN 128

char arp_dev[MAX_ARP_DEV_LEN];
int listen_port=8082;
char auth_url[MAX_AUTH_URL_LEN];


char * PROGRAM_NAME = "ToWebServer";
char * PROGRAM_VERSION = "0.4b";

void PrUsage(void)
{
	printf("Usage : \n");
	printf("\t%s arp_dev listen_port auth_url\t -- for run\n", PROGRAM_NAME);
	printf("\t%s -v\t -- for version\n", PROGRAM_NAME);
	printf("\t%s -h\t -- help\n", PROGRAM_NAME);
}

void PrVersion()
{
	printf("////////////////////////////////////////////////////////////////////\n\n");
	printf("  Program: %s\n", PROGRAM_NAME);
	printf("  Version: %s\n", PROGRAM_VERSION);
	printf("  Last make data: %s %s\n", __TIME__, __DATE__);
	printf("  CopyRight(C) 2014 live186.com\n\n");
	printf("////////////////////////////////////////////////////////////////////\n");
}

void initEntry(int argc, char *argv[])
{
	if(argc == 2)
	{
		if(!strcmp(argv[1], "-v"))
		{
			PrVersion();
			exit(0);
		}
		else
		{
			PrUsage();
			exit(0);
		}
	}
	else if(argc == 4)
	{
		memset(arp_dev, 0, MAX_ARP_DEV_LEN);
		strcpy(arp_dev, argv[1]);

		listen_port=atoi(argv[2]);

		memset(auth_url, 0, MAX_AUTH_URL_LEN);
		strcpy(auth_url, argv[3]);
	}
	else
	{
		PrUsage();
		exit(0);
	}
}

int getpeermac( int sockfd, char *buf )
{
	int ret =0;
	struct arpreq arpreq;
	struct sockaddr_in dstadd_in;
    socklen_t  len = sizeof( struct sockaddr_in );
    memset( &arpreq, 0, sizeof( struct arpreq ));
	memset( &dstadd_in, 0, sizeof( struct sockaddr_in ));
	if( getpeername( sockfd, (struct sockaddr*)&dstadd_in, &len ) < 0 )
		printf("getpeername()");
    else
	{
		memcpy( &arpreq.arp_pa, &dstadd_in, sizeof( struct sockaddr_in ));
		strcpy(arpreq.arp_dev, arp_dev);
		arpreq.arp_pa.sa_family = AF_INET;
		arpreq.arp_ha.sa_family = AF_UNSPEC;
		if( ioctl( sockfd, SIOCGARP, &arpreq ) < 0 )
			printf("ioctl SIOCGARP");
		else
		{
			unsigned char* ptr = (unsigned char *)arpreq.arp_ha.sa_data;
            ret = sprintf(buf, "%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5));
		}
	}
	return ret;
}

int main(int argc, char *argv[])
{
	initEntry(argc, argv);
	
	//接收数据缓存区
	char recvbuf[MAX_RECVBUF_LEN] = {0};
	char clientmac[18] = {0};

	//发送数据缓存区
	int SendDataBeginLen = strlen(SendDataBegin);
	int SendDataLen = SendDataBeginLen+strlen(SendDataEnd)+100;
	char * sendbuf = (char *)malloc(SendDataLen);
	memcpy(sendbuf, SendDataBegin, SendDataBeginLen);
	
    signal(SIGPIPE, SIG_IGN);
    int listenfd; //被动套接字(文件描述符），即只可以accept, 监听套接字
    if ((listenfd = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
//  listenfd = socket(AF_INET, SOCK_STREAM, 0)  
        ERR_EXIT("socket error");

    struct sockaddr_in servaddr;
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(listen_port);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY); 
    /* servaddr.sin_addr.s_addr = inet_addr("127.0.0.1"); */
    /* inet_aton("127.0.0.1", &servaddr.sin_addr); */
    
    int on = 1;
    if (setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
        ERR_EXIT("setsockopt error");

    if (bind(listenfd, (struct sockaddr*)&servaddr,sizeof(servaddr)) < 0)
        ERR_EXIT("bind error");

    if (listen(listenfd, SOMAXCONN) < 0) //listen应在socket和bind之后，而在accept之前
        ERR_EXIT("listen error");
    
    struct sockaddr_in peeraddr; //传出参数
    socklen_t peerlen = sizeof(peeraddr); //传入传出参数，必须有初始值
    
    int conn; // 已连接套接字(变为主动套接字，即可以主动connect)
    int i;
    int client[FD_SETSIZE];
    int maxi = 0; // client数组中最大不空闲位置的下标
    for (i = 0; i < FD_SETSIZE; i++)
        client[i] = -1;

    int nready;
    int maxfd = listenfd;
    fd_set rset;
    fd_set allset;
    FD_ZERO(&rset);
    FD_ZERO(&allset);
    FD_SET(listenfd, &allset);

    while (1) {
        rset = allset;
        nready = select(maxfd + 1, &rset, NULL, NULL, NULL);
        if (nready == -1) {
            if (errno == EINTR)
                continue;
            ERR_EXIT("select error");
        }

        if (nready == 0)
            continue;

        if (FD_ISSET(listenfd, &rset)) {
        
            conn = accept(listenfd, (struct sockaddr*)&peeraddr, &peerlen);  //accept不再阻塞
            if (conn == -1)
                ERR_EXIT("accept error");
            
            for (i = 0; i < FD_SETSIZE; i++) {
                if (client[i] < 0) {
                    client[i] = conn;
                    if (i > maxi)
                        maxi = i;
                    break;
                } 
            }
            
            if (i == FD_SETSIZE) {
                fprintf(stderr, "too many clients\n");
                exit(EXIT_FAILURE);
            }

            printf("recv connect ip=%s port=%d\n", inet_ntoa(peeraddr.sin_addr),
                ntohs(peeraddr.sin_port));

            FD_SET(conn, &allset);
            if (conn > maxfd)
                maxfd = conn;

            if (--nready <= 0)
                continue;
        }

        for (i = 0; i <= maxi; i++) {
            conn = client[i];
            if (conn == -1)
                continue;

            if (FD_ISSET(conn, &rset)) {
                memset(recvbuf, 0, MAX_RECVBUF_LEN);
                //int ret = readline(conn, recvbuf, 1024);
                int ret = recv(conn, recvbuf, MAX_RECVBUF_LEN, 0);
                if (ret == -1)
                    ERR_EXIT("ret == -1 !\n");
                else if (ret  == 0) { //客户端关闭
                    printf("ret == 0 !\n");
                } else {
	                printf("%s\n", recvbuf);
	                
                	if(strncmp(recvbuf, "GET", 3) == 0
	                	|| strncmp(recvbuf, "POST", 4) == 0) {

		                getpeermac(conn, clientmac);
	            		printf("client mac(%d): %s\n", strlen(clientmac), clientmac);

						//重置发送内容缓冲区
						memset(sendbuf+SendDataBeginLen, 0, SendDataLen-SendDataBeginLen);

						//添加参数定义的首字符串
						strcpy(sendbuf+SendDataBeginLen, auth_url);

						//添加客户端IP
						strcpy(sendbuf+strlen(sendbuf), "&aip=");
						char *chip = inet_ntoa(peeraddr.sin_addr);
						strcpy(sendbuf+strlen(sendbuf), chip);

						//添加客户端MAC
						strcpy(sendbuf+strlen(sendbuf), "&amac=");
						strcpy(sendbuf+strlen(sendbuf), clientmac);

						//添加结束标识符
						strcpy(sendbuf+strlen(sendbuf), SendDataEnd);
		                	
		                send(conn, sendbuf, strlen(sendbuf), 0);
		                printf("Send data: \n%s\n", sendbuf);
		                printf("Send client ok !\n");
	                }
				}

				printf("Close client handle !\n");
                FD_CLR(conn, &allset);
                client[i] = -1;
                close(conn);
                
                if (--nready <= 0)
                    break;
            }
        }

    }
        
    return 0;
}

/* select所能承受的最大并发数受
 * 1.一个进程所能打开的最大文件描述符数，可以通过ulimit -n来调整
 *   但一个系统所能打开的最大数也是有限的，跟内存有关，可以通过cat /proc/sys/fs/file-max 查看
 * 2.FD_SETSIZE(fd_set)的限制，这个需要重新编译内核
 */
