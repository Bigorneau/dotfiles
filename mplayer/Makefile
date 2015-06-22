CURRENT_DIR = $(shell pwd)

MPLAYER_DIR = mplayer

all: mplayer

.PHONY: all clean mplayer

mplayer:
	-ln --symbolic $(CURRENT_DIR)/$(MPLAYER_DIR) $(HOME)/.mplayer

clean:
	-rm $(RM_OPTIONS) $(HOME)/.mplayer
