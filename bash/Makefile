CURRENT_DIR = $(shell pwd)

BASH_PROFILE = bash_profile
BASHRC = bashrc
BASH_LOGOUT = bash_logout
INPUTRC = inputrc

BASHRC_CROSS = bashrc_cross

all: bash

.PHONY: all clean bash genbox common

common:
	-ln --symbolic $(CURRENT_DIR)/$(BASH_PROFILE) $(HOME)/.bash_profile
	-ln --symbolic $(CURRENT_DIR)/$(BASH_LOGOUT) $(HOME)/.bash_logout
	-ln --symbolic $(CURRENT_DIR)/$(INPUTRC) $(HOME)/.inputrc

bash: common
	-ln --symbolic $(CURRENT_DIR)/$(BASHRC) $(HOME)/.bashrc

genbox: common
	-ln --symbolic $(CURRENT_DIR)/$(BASHRC_CROSS) $(HOME)/.bashrc

clean:
	-rm --interactive $(HOME)/.bash_profile
	-rm --interactive $(HOME)/.bashrc
	-rm --interactive $(HOME)/.bash_logout
	-rm --interactive $(HOME)/.inputrc
