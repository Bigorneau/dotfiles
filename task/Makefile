CURRENT_DIR = $(shell pwd)

TASKRC = taskrc

all: task

.PHONY: all clean task

task:
	ln -s $(CURRENT_DIR)/$(TASKRC) $(HOME)/.taskrc

clean:
	-rm -i $(HOME)/.taskrc
