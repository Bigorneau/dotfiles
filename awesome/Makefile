XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

AWESOME_DIR = awesome

VICIOUS_REPO = http://git.sysphere.org/vicious
OBVIOUS_REPO = https://github.com/hoelzro/obvious.git

all: awesome extras

.PHONY: all clean awesome extras

awesome:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(AWESOME_DIR) $(XDG_CONFIG_HOME)/awesome

extras:
	-git clone $(VICIOUS_REPO) $(AWESOME_DIR)/vicious
	-git clone $(OBVIOUS_REPO) $(AWESOME_DIR)/obvious

clean:
	-rm --interactive $(XDG_CONFIG_HOME)/awesome
	-rm --recursive --force $(AWESOME_DIR)/vicious
	-rm --recursive --force $(AWESOME_DIR)/obvious
