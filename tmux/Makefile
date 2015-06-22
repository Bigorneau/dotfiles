CURRENT_DIR = $(shell pwd)

TMUXCONF = tmux.conf

all: tmux

.PHONY: all clean tmux

tmux:
	-ln --symbolic $(CURRENT_DIR)/$(TMUXCONF) $(HOME)/.tmux.conf

clean:
	-rm $(RM_OPTIONS) $(HOME)/.tmux.conf
