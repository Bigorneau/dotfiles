CURRENT_DIR = $(shell pwd)

VIMRC = vimrc
VIMDIR = vim
BUNDLE_DIR = bundle

VIM_EDITORCONFIG_REPOS = https://github.com/editorconfig/editorconfig-vim.git

all: vim bundle

.PHONY: all clean vim bundle

vim:
	-ln --symbolic $(CURRENT_DIR)/$(VIMRC) $(HOME)/.vimrc
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(VIMDIR) $(HOME)/.vim

bundle:
	-mkdir --parents --verbose $(CURRENT_DIR)/$(VIMDIR)/$(BUNDLE_DIR)
	-git clone $(VIM_EDITORCONFIG_REPOS) $(CURRENT_DIR)/$(VIMDIR)/$(BUNDLE_DIR)/editorconfig

clean:
	-rm --interactive $(HOME)/.vimrc
	-rm --interactive $(HOME)/.vim
	-rm --recursive --force $(CURRENT_DIR)/$(VIMDIR)/$(BUNDLE_DIR)/editorconfig
