CURRENT_DIR = $(shell pwd)

GDBINIT = gdbinit
GDBINIT_LOCAL = gdbinit.local

all: gdb

.PHONY: all clean gdb

gdb:
	-ln --symbolic $(CURRENT_DIR)/$(GDBINIT) $(HOME)/.gdbinit
	-cp --no-clobber $(CURRENT_DIR)/$(GDBINIT_LOCAL) $(HOME)/.gdbinit.local

clean:
	-rm $(RM_OPTIONS) $(HOME)/.gdbinit
