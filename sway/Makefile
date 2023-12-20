XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

SWAY_DIR = sway
SWAYLOCK_DIR = swaylock

all: sway swaylock

.PHONY: all clean sway swaylock

sway:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(SWAY_DIR) $(XDG_CONFIG_HOME)/sway

swaylock:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(SWAYLOCK_DIR) $(XDG_CONFIG_HOME)/swaylock

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/sway $(XDG_CONFIG_HOME)/swaylock
