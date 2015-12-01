CURRENT_DIR = $(shell pwd)

IRSSI_DIR = irssi

all: irssi

.PHONY: all clean irssi

irssi:
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(IRSSI_DIR) $(HOME)/.irssi

clean:
	-rm $(RM_OPTIONS) $(HOME)/.irssi
