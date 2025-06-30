XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

WAYBAR_DIR = waybar

all: waybar

.PHONY: all clean waybar

waybar:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(WAYBAR_DIR) $(XDG_CONFIG_HOME)/waybar

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/waybar
