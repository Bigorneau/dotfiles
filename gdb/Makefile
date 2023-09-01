XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

GDBDIR = gdb

all: gdb

.PHONY: all clean gdb

gdb:
	-ln --symbolic $(CURRENT_DIR)/$(GDBDIR) $(XDG_CONFIG_HOME)

clean:
	-ln --symbolic $(XDG_CONFIG_HOME)/gdb
