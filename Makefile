CURRENT_DIR = $(shell pwd)

.PHONY: server dev vim bash zsh screen tmux

server: vim bash zsh screen tmux

dev: server git mercurial

desktop: dev uzbl xorg awesome

# BASH
$(BASHRC) = bashrc
bash:
	ln -v -s $(CURRENT_DIR)/$(BASHRC) $(HOME)/.bashrc

# ZSH
$(ZSHRC) = zshrc
zsh:
	ln -v -s $(CURRENT_DIR)/$(ZSHRC) $(HOME)/.zshrc

# VIM
$(VIMRC) = vimrc
$(VIMDIR) = vim
vim:
	ln -v -s $(CURRENT_DIR)/$(VIMRC) $(HOME)/.vimrc
	ln -v -s $(CURRENT_DIR)/$(VIMDIR) $(HOME)/.vim

# SCREEN
$(SCREENRC) = screenrc
screen:
	ln -v -s $(CURRENT_DIR)/$(SCREENRC) $(HOME)/.screenrc

# TMUX
$(TMUXCONF) = tmux.conf
tmux:
	ln -v -s $(CURRENT_DIR)/$(TMUXCONF) $(HOME)/.tmux.conf

# MERCURIAL
$(HGRC) = hgrc
mercurial:
	ln -v -s $(CURRENT_DIR)/$(HGRC) $(HOME)/.hgrc

# GIT
$(GITCONFIG) = gitconfig
git:
	ln -v -s $(CURRENT_DIR)/$(GITCONFIG) $(HOME)/.gitconfig

