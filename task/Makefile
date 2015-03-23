CURRENT_DIR = $(shell pwd)

TASKRC = taskrc

all: task

.PHONY: all clean task

task:
	-ln --symbolic $(CURRENT_DIR)/$(TASKRC) $(HOME)/.taskrc

clean:
	-rm --interactive $(HOME)/.taskrc
