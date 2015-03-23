CURRENT_DIR = $(shell pwd)

IRSSI_DIR = irssi

all: irssi

.PHONY: all clean irssi

irssi:
	-ln --symbolic $(CURRENT_DIR)/$(IRSSI_DIR) $(HOME)/.irssi

clean:
	-rm --interactive $(HOME)/.irssi
