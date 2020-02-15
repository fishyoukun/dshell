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

.PHONY: clean all
clean:	
	rm -f $(OBJS) dshell agent

all: clean agent dshell


