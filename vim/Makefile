CURRENT_DIR = $(shell pwd)

VIMRC = vimrc
VIMDIR = vim
AUTOLOAD_DIR = $(VIMDIR)/autoload
BUNDLE_DIR = $(VIMDIR)/bundle

VIM_PATHOGEN_URL = https://tpo.pe/pathogen.vim

# bundle repositories
VIM_EDITORCONFIG_REPOS = https://github.com/editorconfig/editorconfig-vim.git
VIM_FLAKE8_REPOS = https://github.com/nvie/vim-flake8.git
VIM_LUA_FTPLUGIN_REPOS = https://github.com/xolox/vim-lua-ftplugin.git
VIM_XOLOX_MISC_REPOS = https://github.com/xolox/vim-misc.git
VIM_RUST_REPOS = https://github.com/rust-lang/rust.vim.git

BUNDLE_PACKAGES = editorconfig vim-flake8 vim-lua-ftplugin rust

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

vim-lua-ftplugin:
	-git clone $(VIM_LUA_FTPLUGIN_REPOS) $(CURRENT_DIR)/$(BUNDLE_DIR)/vim-lua-ftplugin
	-git clone $(VIM_XOLOX_MISC_REPOS) $(CURRENT_DIR)/$(BUNDLE_DIR)/xolox-misc-repos

rust:
	-git clone --depth=1 $(VIM_RUST_REPOS) $(CURRENT_DIR)/$(BUNDLE_DIR)/rust.vim

clean:
	-rm $(RM_OPTIONS) $(HOME)/.vimrc
	-rm $(RM_OPTIONS) $(HOME)/.vim
	-rm $(RM_OPTIONS) $(CURRENT_DIR)/$(AUTOLOAD_DIR)/pathogen.vim
	# bundles
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/editorconfig
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/vim-flake8
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/vim-lua-ftplugin
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/xolox-misc-repos
	-rm --recursive --force $(CURRENT_DIR)/$(BUNDLE_DIR)/rust.vim
