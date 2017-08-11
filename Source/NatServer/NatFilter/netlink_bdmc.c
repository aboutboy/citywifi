#include <sys/socket.h>
#include <linux/types.h>
#include <linux/netlink.h>
#define MAX_PAYLOAD 1024  /* maximum payload size*/
#define NETLINK_RECV 31

#define ILV_TOTAL_NUMBER 3 

typedef struct TagRedirILVToLFB
{
     unsigned long dwMetaDataID;
     unsigned long dwMetaDataLength;
    void *pvMetaData;
}TRedirILVToLFB;

typedef struct TagRedirectDataToLFB{
    unsigned long dwILVNum;
    TRedirILVToLFB *ptILVs;
    unsigned long dwRedirectDataLength;
    void *pvRedirectData;
}TRedirectDataToLFB;

typedef struct TagRedirectData
{    
	unsigned long dwPortID;   
	unsigned long dwRedirectDataLength;    
	unsigned char *pvRedirectData;
}TRedirectData;

struct sockaddr_nl src_addr, dest_addr;
struct nlmsghdr *nlh = NULL;
struct msghdr msg;
struct iovec iov;
int sock_fd;
void main() 
{

	TRedirectData *pTempRedirData;
	TRedirectDataToLFB tTempRedirData;
	sock_fd = socket(PF_NETLINK, SOCK_RAW, NETLINK_RECV);
	printf("%d\n",sock_fd);
	memset(&src_addr, 0, sizeof(src_addr));
	src_addr.nl_family = AF_NETLINK;      
	src_addr.nl_pid = getpid();  /* self pid */
	src_addr.nl_groups = 0;  /* not in mcast groups */
	bind(sock_fd, (struct sockaddr*)&src_addr, sizeof(src_addr));
	memset(&dest_addr, 0, sizeof(dest_addr));
	dest_addr.nl_family = AF_NETLINK;
	dest_addr.nl_pid = 0;   /* For Linux Kernel */
	dest_addr.nl_groups = 0; /* unicast */
	nlh=(struct nlmsghdr *)malloc(NLMSG_SPACE(MAX_PAYLOAD));

	/* Fill the netlink message header */
	nlh->nlmsg_len = NLMSG_SPACE(MAX_PAYLOAD);
	nlh->nlmsg_pid = getpid();  /* self pid */
	nlh->nlmsg_flags = 0;
	/* Fill in the netlink message payload */
	strcpy(NLMSG_DATA(nlh), "Hello you!");
	iov.iov_base = (void *)nlh;
	iov.iov_len = nlh->nlmsg_len;
	msg.msg_name = (void *)&dest_addr;
	msg.msg_namelen = sizeof(dest_addr);
	msg.msg_iov = &iov;
	msg.msg_iovlen = 1;
	//sendmsg(sock_fd, &msg, 0);
	printf("%d\n", sendmsg(sock_fd, &msg, 0));

	while(1)
	{
		int  ret, i;
		unsigned char buff[1600];
		unsigned int dwRedirectDataType=0x0800;
		/* Read message from kernel */

		memset(nlh, 0, NLMSG_SPACE(MAX_PAYLOAD));
		ret = recvmsg(sock_fd, &msg, 0);
		printf("%d\n",ret);
		memcpy(buff, NLMSG_DATA(nlh), ret);
		pTempRedirData = (TRedirectData *)buff;
		tTempRedirData.dwILVNum = ILV_TOTAL_NUMBER;
		tTempRedirData.dwRedirectDataLength = htonl(pTempRedirData->dwRedirectDataLength);
		tTempRedirData.ptILVs = (TRedirILVToLFB *)malloc(ILV_TOTAL_NUMBER*sizeof(TRedirILVToLFB));
		memset((char *)(tTempRedirData.ptILVs),0,ILV_TOTAL_NUMBER*sizeof(TRedirILVToLFB));
		
					
		(tTempRedirData.ptILVs)[0].dwMetaDataID = 1;
		dwRedirectDataType = htonl(dwRedirectDataType);
		(tTempRedirData.ptILVs)[0].pvMetaData = &dwRedirectDataType;
		(tTempRedirData.ptILVs)[0].dwMetaDataLength = 4;
				
		(tTempRedirData.ptILVs)[1].dwMetaDataID = 2;
		pTempRedirData->dwPortID = htonl(pTempRedirData->dwPortID);
		(tTempRedirData.ptILVs)[1].pvMetaData = &(pTempRedirData->dwPortID);
		(tTempRedirData.ptILVs)[1].dwMetaDataLength = 4;
		
			
		(tTempRedirData.ptILVs)[2].dwMetaDataID = 3;
		pTempRedirData->dwRedirectDataLength = htonl(pTempRedirData->dwRedirectDataLength);
		(tTempRedirData.ptILVs)[2].pvMetaData = &(pTempRedirData->dwRedirectDataLength);
		(tTempRedirData.ptILVs)[2].dwMetaDataLength = 4;
			
		tTempRedirData.pvRedirectData = pTempRedirData->pvRedirectData;
		printf(" Received message payload: \n");
		for(i=0;i<ret-16;i++)
		{
			if(i%16 == 0)
				printf("\n");
			printf("%02x ", buff[i]);
		}
		printf("\ndwPortID:%lu\n",*(unsigned long *)(tTempRedirData.ptILVs)[1].pvMetaData);
		printf("\n%lu\n", pTempRedirData->dwRedirectDataLength);
		printf("\ndwRedirectDataLength:%lu\n",*(unsigned long *)(tTempRedirData.ptILVs)[2].pvMetaData);
		//RFL_RedirectDataToCEProc(&tTempRedirData);
		free(tTempRedirData.ptILVs);
	}
    /* Close Netlink Socket */
	close(sock_fd);
}
