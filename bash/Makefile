CURRENT_DIR = $(shell pwd)

BASH_PROFILE = bash_profile
BASHRC = bashrc
BASH_LOGOUT = bash_logout
INPUTRC = inputrc

all: bash

.PHONY: all clean bash

bash:
	ln -s $(CURRENT_DIR)/$(BASH_PROFILE) $(HOME)/.bash_profile
	ln -s $(CURRENT_DIR)/$(BASHRC) $(HOME)/.bashrc
	ln -s $(CURRENT_DIR)/$(BASH_LOGOUT) $(HOME)/.bash_logout
	ln -s $(CURRENT_DIR)/$(INPUTRC) $(HOME)/.inputrc

clean:
	rm -i $(HOME)/.bash_profile
	rm -i $(HOME)/.bashrc
	rm -i $(HOME)/.bash_logout
	rm -i $(HOME)/.inputrc
