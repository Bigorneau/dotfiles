CURRENT_DIR = $(shell pwd)

SCREENRC = screenrc

all: screen

.PHONY: all clean screen

screen:
	-ln --symbolic $(CURRENT_DIR)/$(SCREENRC) $(HOME)/.screenrc

clean:
	-rm --interactive $(HOME)/.screenrc
