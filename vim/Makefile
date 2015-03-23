CURRENT_DIR = $(shell pwd)

VIMRC = vimrc
VIMDIR = vim

all: vim

.PHONY: all clean vim

vim:
	-ln --symbolic $(CURRENT_DIR)/$(VIMRC) $(HOME)/.vimrc
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(VIMDIR) $(HOME)/.vim

clean:
	-rm --interactive $(HOME)/.vimrc
	-rm --interactive $(HOME)/.vim
