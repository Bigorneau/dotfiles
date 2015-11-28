CURRENT_DIR = $(shell pwd)

VIMRC = vimrc
VIMDIR = vim
AUTOLOAD_DIR = $(VIMDIR)/autoload
BUNDLE_DIR = $(VIMDIR)/bundle

VIM_PATHOGEN_URL = https://tpo.pe/pathogen.vim
VIM_EDITORCONFIG_REPOS = https://github.com/editorconfig/editorconfig-vim.git
VIM_FLAKE8_REPOS= https://github.com/nvie/vim-flake8.git

BUNDLE_PACKAGES = editorconfig vim-flake8

all: vim autoload bundle

.PHONY: all clean vim bundle

vim:
	-ln --symbolic $(CURRENT_DIR)/$(VIMRC) $(HOME)/.vimrc
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(VIMDIR) $(HOME)/.vim

autoload:
	-mkdir --parents --verbose $(CURRENT_DIR)/$(AUTOLOAD_DIR)
	-curl -LSso $(CURRENT_DIR)/$(AUTOLOAD_DIR)/pathogen.vim $(VIM_PATHOGEN_URL)

bundle: $(BUNDLE_PACKAGES)
	-mkdir --parents --verbose $(CURRENT_DIR)/$(BUNDLE_DIR)

editorconfig:
	-git clone $(VIM_EDITORCONFIG_REPOS) $(CURRENT_DIR)/$(BUNDLE_DIR)/editorconfig

vim-flake8:
	-git clone $(VIM_FLAKE8_REPOS) $(CURRENT_DIR)/$(BUNDLE_DIR)/vim-flake8

clean:
	-rm $(RM_OPTIONS) $(HOME)/.vimrc
	-rm $(RM_OPTIONS) $(HOME)/.vim
	-rm $(RM_OPTIONS) $(CURRENT_DIR)/$(AUTOLOAD_DIR)/pathogen.vim
	# bundles
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/editorconfig
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/vim-flake8
