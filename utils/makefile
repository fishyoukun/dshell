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


$(TARGET) :$(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

.PHONY: clean all
clean:	
	rm $(OBJS) $(TARGET)

all: clean $(TARGET)


