CURRENT_DIR = $(shell pwd)

ZSHENV = zshenv
ZPROFILE = zprofile
ZSHRC = zshrc
ZLOGIN = zlogin
ZLOGOUT = zlogout

all: zsh

.PHONY: all clean zsh

zsh:
	-ln --symbolic $(CURRENT_DIR)/$(ZSHENV) $(HOME)/.zshenv
	-ln --symbolic $(CURRENT_DIR)/$(ZPROFILE) $(HOME)/.zprofile
	-ln --symbolic $(CURRENT_DIR)/$(ZSHRC) $(HOME)/.zshrc
	-ln --symbolic $(CURRENT_DIR)/$(ZLOGIN) $(HOME)/.zlogin
	-ln --symbolic $(CURRENT_DIR)/$(ZLOGOUT) $(HOME)/.zlogout

clean:
	-rm --interactive $(HOME)/.zshenv
	-rm --interactive $(HOME)/.zprofile
	-rm --interactive $(HOME)/.zshrc
	-rm --interactive $(HOME)/.zlogin
	-rm --interactive $(HOME)/.zlogout
