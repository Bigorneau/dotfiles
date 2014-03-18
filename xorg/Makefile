CURRENT_DIR = $(shell pwd)

XRESOURCES = Xresources
XDEFAULTS = Xdefaults
XMODMAP = Xmodmap
XINITRC = xinitrc

all: xorg

.PHONY: all clean xorg

xorg:
	ln -s $(CURRENT_DIR)/$(XRESOURCES) $(HOME)/.Xresources
	ln -s $(CURRENT_DIR)/$(XDEFAULTS) $(HOME)/.Xdefaults
	ln -s $(CURRENT_DIR)/$(XMODMAP) $(HOME)/.Xmodmap
	ln -s $(CURRENT_DIR)/$(XINITRC) $(HOME)/.xinitrc

clean:
	-rm -i $(HOME)/.Xresources
	-rm -i $(HOME)/.Xdefaults
	-rm -i $(HOME)/.Xmodmap
	-rm -i $(HOME)/.xinitrc
