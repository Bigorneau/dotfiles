XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

KAKOUNE_USER_DIR = kak

all: kakoune

.PHONY: all clean kakoune

kakoune:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(KAKOUNE_USER_DIR) $(XDG_CONFIG_HOME)/kak

clean:
	-rm $(XDG_CONFIG_HOME)/kak
