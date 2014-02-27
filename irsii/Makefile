CURRENT_DIR = $(shell pwd)

IRSSI_DIR = irsii

all: irsii

.PHONY: all clean irsii

irsii:
	ln -s $(CURRENT_DIR)/$(IRSII_DIR) $(HOME)/.irsii

clean:
	rm -i $(HOME)/.irssi
