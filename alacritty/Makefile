XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

ALACRITTY_DIR = alacritty

all: alacritty

.PHONY: all clean alacritty

alacritty:
	-mkdir --parents $(XDG_CONFIG_HOME)/
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(ALACRITTY_DIR) $(XDG_CONFIG_HOME)/alacritty

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/alacritty
