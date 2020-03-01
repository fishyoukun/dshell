CC = gcc
CP = cp
PROJECT_PATH = .
DEMO_SRC_PATH = $(PROJECT_PATH)/demo/src
DSHELL_SRC_PATH = $(PROJECT_PATH)/dshell/src
LIB_PATH = $(PROJECT_PATH)/lib
OUT_PATH = $(PROJECT_PATH)/output





.PHONY: agent demo all
agent :
	make -C $(DSHELL_SRC_PATH) makefile all
	$(CP) $(DSHELL_SRC_PATH)/agent.a $(LIB_PATH)
	$(CP) $(DSHELL_SRC_PATH)/dshell $(OUT_PATH)


demo : 
	make -C $(DEMO_SRC_PATH) all
	$(CP) $(DEMO_SRC_PATH)/demo.out $(OUT_PATH)

all : agent demo
show :
	echo $(DEMO_SRC_PATH)
	echo $(DSHELL_SRC_PATH)
clean :
	make -C $(DSHELL_SRC_PATH) clean
	make -C $(DEMO_SRC_PATH) clean
	cd $(OUT_PATH) && rm -rf *
	cd $(LIB_PATH) && rm -rf *



