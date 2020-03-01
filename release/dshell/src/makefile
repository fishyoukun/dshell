CFLAGS = -g


%.o:%.c
	@$(CC) $(CFLAGS) -c $< -o $@
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SOURCES))

AGENT = libagent.a
UTILITY = dshell

$(AGENT) : agent.o server.o
	@echo "build agent"
	@$(AR) rcs $(AGENT) agent.o server.o 

$(UTILITY) : dshell.o client.o
	@echo "build dshell"
	@$(CC) dshell.o  client.o -o dshell -lpthread

Target := $(AGENT)
Target += $(UTILITY)

.PHONY: clean all
clean:	
	rm -f $(OBJS) $(Target)

all: clean $(Target)


