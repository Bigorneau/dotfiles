CURRENT_DIR = $(shell pwd)

XKB = xkb

all: xkb

.PHONY: all clean xkb

xkb:
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(XKB) $(HOME)/.xkb

clean:
	-rm $(RM_OPTIONS) $(HOME)/.xkb
