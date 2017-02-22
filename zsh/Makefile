XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

ZSHENV = zshenv
ZPROFILE = zprofile
ZSHRC = zshrc
ZLOGIN = zlogin
ZLOGOUT = zlogout
ZSHD = zsh.d

all: zsh

.PHONY: all clean zsh

zsh:
	-ln --symbolic $(CURRENT_DIR)/$(ZSHENV) $(HOME)/.zshenv
	-ln --symbolic $(CURRENT_DIR)/$(ZPROFILE) $(HOME)/.zprofile
	-ln --symbolic $(CURRENT_DIR)/$(ZSHRC) $(HOME)/.zshrc
	-ln --symbolic $(CURRENT_DIR)/$(ZLOGIN) $(HOME)/.zlogin
	-ln --symbolic $(CURRENT_DIR)/$(ZLOGOUT) $(HOME)/.zlogout
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(ZSHD) $(XDG_CONFIG_HOME)/zsh.d

clean:
	-rm $(RM_OPTIONS) $(HOME)/.zshenv
	-rm $(RM_OPTIONS) $(HOME)/.zprofile
	-rm $(RM_OPTIONS) $(HOME)/.zshrc
	-rm $(RM_OPTIONS) $(HOME)/.zlogin
	-rm $(RM_OPTIONS) $(HOME)/.zlogout
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/zsh.d
