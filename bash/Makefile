CURRENT_DIR = $(shell pwd)

BASH_PROFILE = bash_profile
BASHRC = bashrc
BASH_LOGOUT = bash_logout
INPUTRC = inputrc

BASHRC_CROSS = bashrc_cross

all: bash

.PHONY: all clean bash genbox common

common:
	ln -s $(CURRENT_DIR)/$(BASH_PROFILE) $(HOME)/.bash_profile
	ln -s $(CURRENT_DIR)/$(BASH_LOGOUT) $(HOME)/.bash_logout
	ln -s $(CURRENT_DIR)/$(INPUTRC) $(HOME)/.inputrc

bash: common
	ln -s $(CURRENT_DIR)/$(BASHRC) $(HOME)/.bashrc

genbox: common
	ln -s $(CURRENT_DIR)/$(BASHRC_CROSS) $(HOME)/.bashrc

clean:
	-rm -i $(HOME)/.bash_profile
	-rm -i $(HOME)/.bashrc
	-rm -i $(HOME)/.bash_logout
	-rm -i $(HOME)/.inputrc
