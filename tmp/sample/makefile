CC = gcc
CP = cp
NM = nm
DU = du
CUT = cut


CFLAGS = -g
TARGET = b.out
SYM_FILE := $(TARGET).sym

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SOURCES))


$(TARGET) :$(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

.PHONY: post clean all
post:
	./post.sh $(TARGET) $(SYM_FILE)

sym:
	$(NM) $(TARGET) >$(SYM_FILE)
clean:	
	rm $(OBJS) $(TARGET)

all: clean $(TARGET) sym post

