XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

all: xdg

.PHONY: all clean xdg

xdg:
	-ln --symbolic $(CURRENT_DIR)/user-dirs.dirs $(XDG_CONFIG_HOME)/user-dirs.dirs

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/user-dirs.dirs
