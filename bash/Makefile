CURRENT_DIR = $(shell pwd)

BASH_PROFILE = bash_profile
BASHRC = bashrc
BASH_LOGOUT = bash_logout
INPUTRC = inputrc

all: bash

.PHONY: all bash

bash:
	ln -v -s $(CURRENT_DIR)/$(BASH_PROFILE) $(HOME)/.bash_profile
	ln -v -s $(CURRENT_DIR)/$(BASHRC) $(HOME)/.bashrc
	ln -v -s $(CURRENT_DIR)/$(BASH_LOGOUT) $(HOME)/.bash_logout
	ln -v -s $(CURRENT_DIR)/$(INPUTRC) $(HOME)/.inputrc
