APP_NAME	=	AVServer

CC		= 	gcc
CPP		= 	g++

FUDE_ROOT	=	/opt/FUDE-0.4

FLAGS           = 	-g -D__LINUX__ -D_DEBUG 

LOCAL_CFLAGS	=	-I../hdr/ \

ACE_CFLAGS	=	-I/usr/local/ACE_wrappers/build/include
ACE_LIBS        =	-L/usr/local/ACE_wrappers/build/lib -lACE

LIBS_CFLAGS     =	  $(ACE_CFLAGS) $(BOOST_CFLAGS) $(LOCAL_CFLAGS)
LIBS		=	  $(BOOST_LIBS) $(ACE_LIBS) $(RECYQUEUE_LIBS)


APP_OBJS	= main.o handler.o
AR = -ar

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
