#!/bin/sh
#

WAN_INTERFACE=wlan0
LAN_INTERFACE=br-lan

#iptables
# rm -rf /etc/sysconfig/iptables
# service iptables restart

iptables -F
iptables -t nat -F
iptables -t filter -F
iptables -t raw -F
iptables -t mangle -F

#最后为内网172.16.0.0/16提供路由转发
# echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -I POSTROUTING -s 192.168.1.0/24 -o $WAN_INTERFACE -j MASQUERADE

#默认在FORWARD节点全部禁止，只允许DNS请求通过
iptables -t filter -I FORWARD -i $LAN_INTERFACE -p tcp --dport 80 -d 10.1.19.3 -j ACCEPT
iptables -t filter -I FORWARD -i $LAN_INTERFACE -p udp --dport 53 -j ACCEPT
iptables -t filter -A FORWARD -i $LAN_INTERFACE -j DROP

#重定向80到本机端口8081
iptables -t nat -I PREROUTING -i $LAN_INTERFACE -p tcp --dport 80 -d 10.1.19.3 -j ACCEPT
iptables -t nat -A PREROUTING -i $LAN_INTERFACE -p tcp --dport 80 -j DNAT --to-destination 192.168.1.1:8081
#本地重定向方式，op不支持
# iptables -t nat -A PREROUTING -i $LAN_INTERFACE -p tcp --dport 80 -j REDIRECT --to-port 8081


#允许LAN_INTERFACE口原IP为172.16.7.9的数据通过
# iptables -t nat -I PREROUTING -i $LAN_INTERFACE -s 172.16.7.9 -j ACCEPT
# iptables -t filter -I FORWARD -i $LAN_INTERFACE -s 172.16.7.9 -j ACCEPT

# service iptables save
