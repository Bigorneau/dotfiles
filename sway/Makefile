XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

SWAY_DIR = sway

all: sway

.PHONY: all clean sway

sway:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(SWAY_DIR) $(XDG_CONFIG_HOME)/sway

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/sway
