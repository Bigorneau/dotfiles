CURRENT_DIR = $(shell pwd)

TMUXCONF = tmux.conf

all: tmux

.PHONY: all clean tmux

tmux:
	ln -s $(CURRENT_DIR)/$(TMUXCONF) $(HOME)/.tmux.conf

clean:
	-rm -i $(HOME)/.tmux.conf
