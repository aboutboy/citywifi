sheyunfeng.jios.org

安装VPN
yum -y install pptp-setup
连接VPN
pptpsetup --create GreenVPN --server 106.186.17.19 --username 2312708932@qq.com --password fengyun --start
route del -net 0.0.0.0 dev ppp0
route add -net 0.0.0.0 dev ppp0
断开VPN
pptpsetup --delete GreenVPN
killall  pppd

如果使用LINUX做服务器
yum -y install tigervnc-server
yum -y install samba
yum -y install vsftp
yum -y install openssh-clients
yum -y install dhcp
yum -y install ntsysv
yum -y install dos2unix


开发环境需要安装的包
yum -y install vim
yum -y install dos2unix

需要安装的库
yum -y install binutils
yum -y install bzip2
yum -y install gawk
yum -y install gcc
yum -y install gcc-c++
yum -y install gettext
yum -y install make
yum -y install ncurses-devel
yum -y install patch
yum -y install unzip
yum -y install wget
yum -y install zlib-devel
yum -y install subversion
yum -y install screen
yum -y install git

64位
yum -y install bison
yum -y install flex
yum -y install autoconf
yum -y install perl-Compress-Zlib

更新代码
https://dev.openwrt.org/wiki/GetSource

svn co svn://svn.openwrt.org/openwrt/branches/barrier_breaker
svn update

git clone git://git.openwrt.org/14.07/openwrt.git


更新环境
./scripts/feeds update -a
./scripts/feeds install -a

准备编译
make clean
make defconfig
make prereq
make menuconfig

编译选项
LuCI						--界面
LuCI-chinese				--界面中文
Kernel Modules
    Network Support
       kmod-sched           --为TC命令增加内核支持
Network
	ssh
		openssh-client		--openssh客户端
		openssh-keygen		--用户自动登录
    tc                     	--增加TC功能

开始编译
make -j 4 V=99



#HIWIFI HC5661

//后台刷固件
chmod 777 /tmp/PandoraBox-ralink-pry1-r212-20140126-full.bin
mtd -r write /tmp/PandoraBox-ralink-pry1-r212-20140126-full.bin firmware


#更新列表
opkg update

#安装中文界面
opkg install luci-i18n-chinese

#为TC命令增加内核支持
opkg install kmod-sched
#增加TC功能
opkg install tc

#删除ssh软链接
rm -rf /usr/bin/ssh
#删除scp软链接
rm -rf /usr/bin/scp
#安装openssh客户端
opkg install openssh-client openssh-keygen

//生成公约密钥
ssh-keygen -t rsa


(gdb) set print elements 0


#打印规则序列号
iptables -t nat -L --line-numbers|grep BC:96:80:38:C7:B0
#删除指定1号规则
iptables -t nat -D PREROUTING 1


让OP每天3点自动重启
crontab -e
0 3 * * * /live186/bin/guard.sh reset
界面设置开机启动crond服务
/etc/init.d/cron enable
/etc/init.d/cron reload
/etc/init.d/cron restart


/live186/bin/guard.sh run &




H5561的DreamBox官方固件，需要删除以下组件，减少内存占用
opkg remove luci-app-aria2
opkg remove aria2

opkg remove luci-app-hd-idle
opkg remove hd-idle

opkg remove luci-app-pptpd
opkg remove pptpd

opkg remove luci-app-samba
opkg remove samba36-server

opkg remove luci-app-upnp
opkg remove miniupnpd

opkg remove luci-app-vsftpd
opkg remove vsftpd

opkg remove luci-app-mentohust
opkg remove mentohust

opkg remove luci-app-n2n
opkg remove n2n

opkg remove luci-app-ddns
opkg remove ddns-scripts

opkg remove luci-app-p910nd
opkg remove p910nd

opkg remove luci-app-nwan

opkg remove luci-app-radvd
opkg remove radvd

opkg remove luci-app-cpulimit
opkg remove cpulimit-ng

opkg remove luci-app-wol

opkg remove kmod-fs-nfs-common
opkg remove kmod-fs-nfs
opkg remove kmod-fs-nfs-common

opkg remove kmod-usb-printer
opkg remove luci-app-qos-emong



ssh -C -f -N -g -R 62001:127.0.0.1:22 root@auth.live186.com -p 8022
/live186/bin/guard.sh accept 1 60:02:b4:55:23:c0
注：Dreambox默认禁止外网登陆ssh，需要关掉，否则无法自动连接服务端

6,218.2.135.1,61.147.37.1
