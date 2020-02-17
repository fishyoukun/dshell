CC = gcc
CP = cp
NM = nm
DU = du
CUT = cut


CFLAGS = -g
TARGET = tool.out


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

.PHONY: clean all
clean:	
	rm -f $(OBJS) dshell agent server client

all: clean agent dshell server client


