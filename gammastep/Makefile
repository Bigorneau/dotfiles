XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

GAMMASTEP_DIR = gammastep
CONFIG_INI = config.ini

all: gammastep

.PHONY: all clean gammastep

gammastep:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic $(CURRENT_DIR)/$(GAMMASTEP_DIR) $(XDG_CONFIG_HOME)/gammastep

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/gammastep
