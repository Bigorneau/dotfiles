XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

KITTY_DIR = kitty

all: kitty

.PHONY: all clean kitty

kitty:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(KITTY_DIR) $(XDG_CONFIG_HOME)/kitty

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/kitty
