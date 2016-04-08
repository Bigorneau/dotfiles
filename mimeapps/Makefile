XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

all: mimeapps

.PHONY: all clean mimeapps

mimeapps:
	-ln --symbolic $(CURRENT_DIR)/mimeapps.list $(XDG_CONFIG_HOME)/mimeapps.list

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/mimeapps.list
