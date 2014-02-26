CURRENT_DIR = $(shell pwd)

XRESOURCES = Xresources
XDEFAULTS = Xdefaults
XMODMAP = Xmodmap
XINITRC = xinitrc

all: xorg

.PHONY: all xorg

xorg:
	ln -v -s $(CURRENT_DIR)/$(XRESOURCES) $(HOME)/.Xresources
	ln -v -s $(CURRENT_DIR)/$(XDEFAULTS) $(HOME)/.Xdefaults
	ln -v -s $(CURRENT_DIR)/$(XMODMAP) $(HOME)/.Xmodmap
	ln -v -s $(CURRENT_DIR)/$(XINITRC) $(HOME)/.xinitrc
