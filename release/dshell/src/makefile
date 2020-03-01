CC = gcc
AR = ar

CFLAGS = -g

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SOURCES))

agent : agent.o server.o
	$(AR) cr agent.a agent.o server.o 
dshell : dshell.o client.o
	$(CC) dshell.o  client.o -o dshell -lpthread

Target := agent 
Target += dshell

.PHONY: clean all
clean:	
	rm -f $(OBJS) $(Target)

all: clean $(Target)


