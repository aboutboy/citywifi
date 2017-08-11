#!/bin/sh

# 读取配置文件
# CONF_NAME="/live186/etc/live186.conf"
# LOG_NAME="/tmp/guard.log"

#场所ID
SPACE_ID="100"

#认证服务器地址
#AUTH_SSH_SERVER_ADDR="auth.live186.com"
AUTH_SSH_SERVER_ADDR="192.168.1.3"
AUTH_SERVER_PORT="22"
#映射端口
REMOTE_PORT="62001"

#认证网页跳转服务端口
TO_AUTH_WEB_SERVER_PORT="8082"
#VIP页面跳转服务端口
TO_VIP_WEB_SERVER_PORT="8083"
#网页服务器地址
#AUTH_WEB_SERVER_ADDR="m.live186.com"
AUTH_WEB_SERVER_ADDR="192.168.1.3"
#跳转参数
TOWEBSTR="aserver=$AUTH_SSH_SERVER_ADDR&rport=$REMOTE_PORT&placeid=$SPACE_ID"

#认证网页跳转
AUTH_WEB_SERVER_URL="http://$AUTH_WEB_SERVER_ADDR/auth?${TOWEBSTR}"
#VIP页面URL
VIP_WEB_SERVER_URL="http://$AUTH_WEB_SERVER_ADDR?method=myvip&${TOWEBSTR}"

#iptables备份路径
IPTABLES_FILE="/etc/iptables"

# 外网通信口
#WAN_ETH="pppoe-wan"
WAN_ETH="eth0.2"
# 内网通信口
LAN_ETH="br-lan"

#内网非VIP终端限制带宽
LAN_OTHER_BAND="4Mbit ceil 4Mbit"


#等待认证服务器成功连接
ScanAuthServer()
{
	while true
	do
		ConnResult=`ssh -p $AUTH_SERVER_PORT $AUTH_SSH_SERVER_ADDR echo 123`
		if [ "123" == "$ConnResult" ]; then
			echo "Connect $AUTH_SSH_SERVER_ADDR ok !"
			break;
		fi
	
		echo "Connect $AUTH_SSH_SERVER_ADDR false !"	
	done
}

ReleaseRemote()
{
	#如果服务器上有遗留的检测进程则杀掉
	ssh -p $AUTH_SERVER_PORT $AUTH_SSH_SERVER_ADDR pkill -f $REMOTE_PORT

	ScanPID=`ssh -p $AUTH_SERVER_PORT $AUTH_SSH_SERVER_ADDR netstat -nlp | grep :$REMOTE_PORT | awk '{print $7}' | awk -F"/" '{ print $1 }'`
	if [ -n "$ScanPID" ]; then
		ssh -p $AUTH_SERVER_PORT $AUTH_SSH_SERVER_ADDR kill -9 $ScanPID
	fi
}

# 检查远程端口
ScanRemote()
{
	while true
	do
		ScanPID=`ps -w | grep $REMOTE_PORT | grep root@$AUTH_SSH_SERVER_ADDR |awk  -F ' '  '{print \$1}'`
		echo "ScanRemote pid: $ScanPID"
		
		if [ ! -n "$ScanPID" ]; then
			echo "ToControl ssh is not working"

			# -N 告诉SSH客户端，这个连接不需要执行任何命令。仅仅做端口转发
			# -L 本地端口映射
			# -R 远端端口映射
			# -C：压缩数据传输
			# -f ：告诉SSH客户端在后台运行，通常和-N连用，不用登录到远程主机
			# -g ：在-L/-R/-D参数中，允许远程主机连接到建立的转发的端口，如果不加这个参数，只允许本地主机建立连接
			ssh -C -f -N -g -R $REMOTE_PORT:127.0.0.1:22 root@$AUTH_SSH_SERVER_ADDR -p $AUTH_SERVER_PORT
		else		
			ScanResult=`ssh $AUTH_SSH_SERVER_ADDR -p $AUTH_SERVER_PORT ssh 127.0.0.1 -p $REMOTE_PORT echo 123`
			echo "ScanRemote woring: $ScanResult"
			if [ "123" == "$ScanResult" ]; then
				echo "ToControl ssh is working !"
				break;
			else
				echo "kill -9 $ScanPID"
				kill -9 $ScanPID
			fi
		fi
	done
}

# 检查认证网页跳转程序
ScanToAuthWebServer()
{
	ScanResult=`ps -w | grep ToWebServer | grep $TO_AUTH_WEB_SERVER_PORT`
	echo "ScanToAuthWebServer result: "
	echo "$ScanResult"
	
	if [ ! -n "$ScanResult" ]; then
		echo "ScanToAuthWebServer is not working"
		/live186/bin/ToWebServer "$LAN_ETH" $TO_AUTH_WEB_SERVER_PORT "$AUTH_WEB_SERVER_URL" &
	else
		echo "ScanToAuthWebServer is working"
	fi
}

# 检查VIP网页跳转程序
ScanToVIPWebServer()
{
	ScanResult=`ps -w | grep ToWebServer | grep $TO_VIP_WEB_SERVER_PORT`
	echo "ScanToVIPWebServer result: "
	echo "$ScanResult"
	
	if [ ! -n "$ScanResult" ]; then
		echo "ScanToVIPWebServer is not working"
		/live186/bin/ToWebServer "$LAN_ETH" $TO_VIP_WEB_SERVER_PORT "$VIP_WEB_SERVER_URL" &
	else
		echo "ScanToVIPWebServer is working"
	fi
}

# 初始化限速内网
InitTCLAN()
{
	LAN_ETH=$1
	
	#限制内网通信优先级
	#清除$LAN_ETH口现有的队列
	tc qdisc del dev $LAN_ETH root
	#为$LAN_ETH添加一个root(根)队列,句柄为1:,类型为htb队列,未分类的流量都将分配给类别1:0
	tc qdisc add dev $LAN_ETH root handle 1: htb
	#在根队列1:中,创建一个标识为1:40的类别，速率$LAN_OTHER_BAND
	tc class add dev $LAN_ETH parent 1: classid 1:40 htb rate $LAN_OTHER_BAND prio 40

	#这里过滤器和1:关联，句柄号40，用于控制通道
	tc filter add dev $LAN_ETH parent 1: protocol ip prio 40 handle 40 fw classid 1:40
}

# 初始化限速模块
InitTC()
{
	insmod sch_htb
	insmod sch_prio
	insmod cls_fw
	insmod cls_u32

	InitTCLAN $LAN_ETH
}

# 初始化限速
ResetRate()
{
	#清空限速规则
	iptables -t mangle -F

	iptables -t mangle -I FORWARD -s $AUTH_WEB_SERVER_ADDR -j ACCEPT
}

SaveIptables()
{
	/usr/sbin/iptables-save > $IPTABLES_FILE
}

SetTCForIP()
{
	ACCEPT_IP=$1
	ACCEPT_LEVEL=$2

	iptables -t mangle -D FORWARD -d $ACCEPT_IP -j MARK --set-mark 40 2>/dev/null

	if [ "$ACCEPT_LEVEL" != "VIP" ]; then
		iptables -t mangle -I FORWARD 2 -d $ACCEPT_IP -j MARK --set-mark 40
	fi
}

IptablesAccept()
{
	ACCEPT_MAC=$1

	#先检查是否已经加了允许
	CHECK_ACCETP_MAC=`iptables -t nat -L | grep $ACCEPT_MAC |awk 'NR==1' |awk  -F ' '  '{print \$7}'`
	#echo "CHECK_ACCETP_MAC: $CHECK_ACCETP_MAC"
	if [ "$ACCEPT_MAC" != "$CHECK_ACCETP_MAC" ]; then
		#允许指定MAC上网
		iptables -t nat -I PREROUTING 16 -i $LAN_ETH -m mac --mac-source $ACCEPT_MAC -j ACCEPT
	fi
}

AcceptClient()
{
	ACCEPT_IP=$1
	ACCEPT_MAC=$2
	ACCEPT_LEVEL=$3
	
	IptablesAccept $ACCEPT_MAC
	SetTCForIP $ACCEPT_IP $ACCEPT_LEVEL
	SaveIptables

	echo "ACCEPT OK"
}

# 初始化iptables
ResetIptables()
{
	iptables -t nat -F
	iptables -t filter -F
	
	#最后为内网192.168.1.0/24提供路由转发
	echo 1 > /proc/sys/net/ipv4/ip_forward
	iptables -t nat -I POSTROUTING -s 192.168.1.0/24 -o $WAN_ETH -j MASQUERADE

	iptables -t filter -I FORWARD -i $LAN_ETH -j ACCEPT

	#其他报文转到本地无用端口丢弃
	iptables -t nat -I PREROUTING -i $LAN_ETH -p udp -j DNAT --to-destination 192.168.1.1:65532
	iptables -t filter -I INPUT -i $LAN_ETH -p udp --dport 65532 -j DROP

	#重定向所有TCP数据到本机端口$TO_AUTH_WEB_SERVER_PORT
	iptables -t nat -I PREROUTING -i $LAN_ETH -p tcp -j DNAT --to-destination 192.168.1.1:$TO_AUTH_WEB_SERVER_PORT
	#本地重定向方式，op不支持
	# iptables -t nat -I PREROUTING -i $LAN_ETH -p tcp --dport 80 -j REDIRECT --to-port 8082

	#访问官网的时候，需要从其他网站下载jQuery Mobile
	iptables -t nat -I PREROUTING -i $LAN_ETH -d code.jquery.com -j ACCEPT

	#GateWay
	iptables -t nat -I PREROUTING -i $LAN_ETH -d 192.168.1.1 -j ACCEPT

	#允许访问认证网页
	iptables -t nat -I PREROUTING -i $LAN_ETH -d $AUTH_WEB_SERVER_ADDR -j ACCEPT
	#VIP网页跳转
	iptables -t nat -I PREROUTING -i $LAN_ETH -d $AUTH_WEB_SERVER_ADDR -p tcp --dport $TO_VIP_WEB_SERVER_PORT -j DNAT --to-destination 192.168.1.1:$TO_VIP_WEB_SERVER_PORT

	#允许DNS
	iptables -t nat -I PREROUTING -i $LAN_ETH -p tcp --dport 53 -j ACCEPT
	iptables -t nat -I PREROUTING -i $LAN_ETH -p udp --dport 53 -j ACCEPT

	#允许DHCPv4
	iptables -t nat -I PREROUTING -i $LAN_ETH -p udp --dport 67 -j ACCEPT
	iptables -t nat -I PREROUTING -i $LAN_ETH -p udp --dport 68 -j ACCEPT
	#允许DHCPv6
	iptables -t nat -I PREROUTING -i $LAN_ETH -p udp --dport 546 -j ACCEPT
	iptables -t nat -I PREROUTING -i $LAN_ETH -p udp --dport 547 -j ACCEPT

	#外网映射
	iptables -t nat -I PREROUTING -i $WAN_ETH -p tcp --dport 3389 -j DNAT --to-destination 192.168.1.2:3389
	iptables -t nat -I PREROUTING -i $WAN_ETH -p tcp --dport 3306 -j DNAT --to-destination 192.168.1.2:3306
	
	iptables -t nat -I PREROUTING -i $WAN_ETH -p tcp --dport 139 -j DNAT --to-destination 192.168.1.2:139
	iptables -t nat -I PREROUTING -i $WAN_ETH -p tcp --dport 445 -j DNAT --to-destination 192.168.1.2:445
	iptables -t nat -I PREROUTING -i $WAN_ETH -p udp --dport 137 -j DNAT --to-destination 192.168.1.2:137
	iptables -t nat -I PREROUTING -i $WAN_ETH -p udp --dport 138 -j DNAT --to-destination 192.168.1.2:138
}

RestoreServer()
{
	if [ -e $IPTABLES_FILE ]; then
		/usr/sbin/iptables-restore < $IPTABLES_FILE
	else
		ResetIptables
		ResetRate
		SaveIptables
	fi
}

ResetServer()
{
	rm -rf $IPTABLES_FILE
}

#急救上网模式
TempRouter()
{
	iptables -t nat -F
	iptables -t filter -F
	iptables -t mangle -F
	
	#最后为内网192.168.1.0/24提供路由转发
	echo 1 > /proc/sys/net/ipv4/ip_forward
	iptables -t nat -I POSTROUTING -s 192.168.1.0/24 -o $WAN_ETH -j MASQUERADE

	iptables -t filter -I FORWARD -i $LAN_ETH -j ACCEPT
}

InitCrond()
{
	/etc/init.d/cron enable
	/etc/init.d/cron reload
	/etc/init.d/cron restart
}

JJSHEAccept()
{
	#K590C-i7
	AcceptClient 192.168.1.7 60:02:B4:55:23:C0 VIP

	#AuthServer
	AcceptClient 192.168.1.2 00:24:1D:5B:00:6D VIP

	#BaiDuWiFi
	AcceptClient 192.168.1.6 BC:96:80:38:C7:B0 VIP
}

Main()
{
	RUN_MODE=$1
	ACCEPT_IP=$2
	ACCEPT_MAC=$3
	ACCEPT_LEVEL=$4

	if [ "accept" == "$RUN_MODE" ]; then
		AcceptClient $ACCEPT_IP $ACCEPT_MAC $ACCEPT_LEVEL
	elif [ "router" == "$RUN_MODE" ]; then
		TempRouter
	elif [ "reset" == "$RUN_MODE" ]; then
		ReleaseRemote
		ResetServer
		/sbin/reboot -f
	elif [ "run" == "$RUN_MODE" ]; then
		InitTC
		RestoreServer
		ScanAuthServer
		ReleaseRemote
		InitCrond

		JJSHEAccept
	
		while true
		do
			sleep 10
			
			ScanRemote
			ScanToAuthWebServer
			ScanToVIPWebServer
		done
	fi
}

Main $@
