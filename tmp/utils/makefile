CC = gcc
CP = cp
NM = nm
DU = du
CUT = cut


CFLAGS = -g



%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SOURCES))

agent : readsys.o
	$(CC) readsys.o -o agent
dshell : dshell.o
	$(CC) dshell.o -o dshell

server : server.o
	$(CC) server.o -o server

client : client.o
	$(CC) client.o -o client

newthread : newthread.o
	$(CC) newthread.o -o newthread -lpthread

redirect : redirect.o
	$(CC) redirect.o -o redirect

Target := agent 
Target += dshell
Target += server
Target += client
Target += newthread
Target += redirect

.PHONY: clean all
clean:	
	rm -f $(OBJS) $(Target)

all: clean $(Target)


