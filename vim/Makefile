CURRENT_DIR = $(shell pwd)

VIMRC = vimrc
VIMDIR = vim

all: vim

.PHONY: all clean vim

vim:
	-ln -s $(CURRENT_DIR)/$(VIMRC) $(HOME)/.vimrc
	-ln -s $(CURRENT_DIR)/$(VIMDIR) $(HOME)/.vim

clean:
	-rm -i $(HOME)/.vimrc
	-rm -i $(HOME)/.vim
