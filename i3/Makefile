XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

I3_DIR = i3

all: i3

.PHONY: all clean i3

i3:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(I3_DIR) $(XDG_CONFIG_HOME)/i3

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/i3
