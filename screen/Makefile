CURRENT_DIR = $(shell pwd)

SCREENRC = screenrc

all: screen

.PHONY: all clean screen

screen:
	ln -s $(CURRENT_DIR)/$(SCREENRC) $(HOME)/.screenrc

clean:
	rm -i $(HOME)/.screenrc
