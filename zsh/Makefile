CURRENT_DIR = $(shell pwd)

ZSHENV = zshenv
ZPROFILE = zprofile
ZSHRC = zshrc
ZLOGIN = zlogin
ZLOGOUT = zlogout

all: zsh

.PHONY: all clean zsh

zsh:
	ln -s $(CURRENT_DIR)/$(ZSHENV) $(HOME)/.zshenv
	ln -s $(CURRENT_DIR)/$(ZPROFILE) $(HOME)/.zprofile
	ln -s $(CURRENT_DIR)/$(ZSHRC) $(HOME)/.zshrc
	ln -s $(CURRENT_DIR)/$(ZLOGIN) $(HOME)/.zlogin
	ln -s $(CURRENT_DIR)/$(ZLOGOUT) $(HOME)/.zlogout

clean:
	rm -i $(HOME)/.zshenv
	rm -i $(HOME)/.zprofile
	rm -i $(HOME)/.zshrc
	rm -i $(HOME)/.zlogin
	rm -i $(HOME)/.zlogout
