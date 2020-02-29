CC = gcc

CFLAGS = -g

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SOURCES))

agent : agent.o server.o
	$(CC) agent.o server.o -o agent -lpthread
dshell : dshell.o client.o
	$(CC) dshell.o  client.o -o dshell -lpthread

Target := agent 
Target += dshell

.PHONY: clean all
clean:	
	rm -f $(OBJS) $(Target)

all: clean $(Target)


