CURRENT_DIR = $(shell pwd)

PACMAN_CONF = pacman.conf

all: pacman

.PHONY: all clean pacman

pacman:
	-cp $(CURRENT_DIR)/$(PACMAN_CONF) /etc/pacman.conf

clean:
	-rm $(RM_OPTIONS) /etc/pacman.conf
