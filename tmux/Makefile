CURRENT_DIR = $(shell pwd)

TMUXCONF = tmux.conf

all: tmux

.PHONY: all tmux

tmux:
	ln -v -s $(CURRENT_DIR)/$(TMUXCONF) $(HOME)/.tmux.conf
