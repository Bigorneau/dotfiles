XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

FOOT_DIR = foot

all: foot

.PHONY: all clean foot

foot:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(FOOT_DIR) $(XDG_CONFIG_HOME)/foot

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/foot
