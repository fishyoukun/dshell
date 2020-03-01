PROJECT = demo

CFLAGS = -g
TARGET = $(PROJECT).out
SYM_FILE := $(PROJECT).sym

%.o:%.c
	@$(CC) $(CFLAGS) -c $< -o $@
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SOURCES))


$(TARGET) :$(OBJS)
	@echo "build demo"
	@$(CC) $(OBJS) -o $(TARGET) -L $(LIB_PATH) -lagent -lpthread

.PHONY: post clean all
post:
	@./post.sh $(TARGET) $(SYM_FILE)

sym:
	@$(NM) $(TARGET) >$(SYM_FILE)
clean:	
	@rm -f $(OBJS) $(TARGET) $(SYM_FILE)

all: clean $(TARGET) sym post

