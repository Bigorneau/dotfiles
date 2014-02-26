CURRENT_DIR = $(shell pwd)

VIMRC = vimrc
VIMDIR = vim

all: vim

.PHONY: all vim

vim:
	ln -v -s $(CURRENT_DIR)/$(VIMRC) $(HOME)/.vimrc
	ln -v -s $(CURRENT_DIR)/$(VIM) $(HOME)/.vim
