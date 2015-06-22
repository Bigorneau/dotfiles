CURRENT_DIR = $(shell pwd)

VIMRC = vimrc
VIMDIR = vim
AUTOLOAD_DIR = $(VIMDIR)/autoload
BUNDLE_DIR = $(VIMDIR)/bundle

VIM_PATHOGEN_URL = https://tpo.pe/pathogen.vim
VIM_EDITORCONFIG_REPOS = https://github.com/editorconfig/editorconfig-vim.git

all: vim autoload bundle

.PHONY: all clean vim bundle

vim:
	-ln --symbolic $(CURRENT_DIR)/$(VIMRC) $(HOME)/.vimrc
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(VIMDIR) $(HOME)/.vim

autoload:
	-mkdir --parents --verbose $(CURRENT_DIR)/$(AUTOLOAD_DIR)
	-curl -LSso $(CURRENT_DIR)/$(AUTOLOAD_DIR)/pathogen.vim $(VIM_PATHOGEN_URL)

bundle:
	-mkdir --parents --verbose $(CURRENT_DIR)/$(BUNDLE_DIR)
	-git clone $(VIM_EDITORCONFIG_REPOS) $(CURRENT_DIR)/$(BUNDLE_DIR)/editorconfig

clean:
	-rm $(RM_OPTIONS) $(HOME)/.vimrc
	-rm $(RM_OPTIONS) $(HOME)/.vim
	-rm $(RM_OPTIONS) $(CURRENT_DIR)/$(AUTOLOAD_DIR)/pathogen.vim
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/editorconfig
