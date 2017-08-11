obj-m += Pre_routing_hook.o
cap-objs := Pre_routing_hook.o vermagic.o

all:    
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules                                                                                                                                     
clean:  
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
