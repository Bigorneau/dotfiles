XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

UZBL_DIR = uzbl

all: uzbl

.PHONY: all clean uzbl

uzbl:
	-mkdir -p $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(UZBL_DIR) $(XDG_CONFIG_HOME)/uzbl

clean:
	-rm --interactive $(XDG_CONFIG_HOME)/uzbl
