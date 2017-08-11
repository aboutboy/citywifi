APP_NAME	=	ControlServer

CC		= 	gcc
CPP		= 	g++

FLAGS           = 	-g -D__LINUX__ -D_DEBUG 

LOCAL_CFLAGS	=	-I../hdr/

ACE_CFLAGS		=	-I/usr/local/ACE_wrappers
ACE_LIBS        =	-L/usr/local/ACE_wrappers/lib -lACE

BOOST_CFLAGS	=	-I/usr/local/boost_1_55_0
BOOST_LIBS		=	/usr/local/boost_1_55_0/lib/libboost_filesystem-gcc44-1_55.a \
			  		/usr/local/boost_1_55_0/lib/libboost_regex-gcc44-1_55.a \
			  		/usr/local/boost_1_55_0/lib/libboost_system-gcc44-1_55.a

LIBS_CFLAGS     =	$(LOCAL_CFLAGS) $(ACE_CFLAGS) $(BOOST_CFLAGS) $(BOOST_CFLAGS)
LIBS			=	$(BOOST_LIBS) $(ACE_LIBS) $(BOOST_LIBS) $(RECYQUEUE_LIBS)


APP_OBJS	=	KO_ProControl.o handler.o main.o
AR 		=	-ar

#make file of all
all: version application

version:
	@echo "--------------------------------------------------------------"
	@echo "make file for "$(APP_NAME)
	@echo "--------------------------------------------------------------"

application:$(APP_OBJS)
	$(CPP) -o $(APP_NAME) $(APP_OBJS) $(LIBS)
	@echo "-----------------------------[ OK ] ---------------------------"


.cpp.o:
	$(CPP) $(FLAGS) $(LIBS_CFLAGS)  -c $<

.c.o:
	$(CC) $(FLAGS) $(LIBS_CFLAGS) -c $<

clean:
	rm -f *.o
	rm -f $(APP_NAME)
