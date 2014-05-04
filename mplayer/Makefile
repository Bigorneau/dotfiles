CURRENT_DIR = $(shell pwd)

MPLAYER_DIR = mplayer

all: mplayer

.PHONY: all clean mplayer

mplayer:
	-ln -s $(CURRENT_DIR)/$(MPLAYER_DIR) $(HOME)/.mplayer

clean:
	-rm -i $(HOME)/.mplayer
