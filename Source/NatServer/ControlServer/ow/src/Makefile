APP_NAME	=	NetServer

CC		= 	gcc
CPP		= 	g++

FUDE_ROOT	=	/opt/FUDE-0.4

FLAGS           = 	-g -D__LINUX__ -D_DEBUG -Wall

LOCAL_CFLAGS	=	-I../hdr/ \

LIBS_CFLAGS     =	  $(LOCAL_CFLAGS)
LIBS		=	  $(RECYQUEUE_LIBS)


APP_OBJS	= main.o
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
