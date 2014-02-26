CURRENT_DIR = $(shell pwd)

ZSHENV = zshenv
ZPROFILE = zprofile
ZSHRC = zshrc
ZLOGIN = zlogin
ZLOGOUT = zlogout

all: zsh

.PHONY: all zsh

zsh:
	ln -v -s $(CURRENT_DIR)/$(ZSHENV) $(HOME)/.zshenv
	ln -v -s $(CURRENT_DIR)/$(ZPROFILE) $(HOME)/.zprofile
	ln -v -s $(CURRENT_DIR)/$(ZSHRC) $(HOME)/.zshrc
	ln -v -s $(CURRENT_DIR)/$(ZLOGIN) $(HOME)/.zlogin
	ln -v -s $(CURRENT_DIR)/$(ZLOGOUT) $(HOME)/.zlogout
