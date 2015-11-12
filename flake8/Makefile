XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

FLAKE8 = flake8

all: flake8

.PHONY: all clean flake8

flake8:
	-ln --symbolic $(CURRENT_DIR)/$(FLAKE8) $(XDG_CONFIG_HOME)/flake8

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/flake8
