CURRENT_DIR = $(shell pwd)

XRESOURCES = Xresources
XDEFAULTS = Xdefaults
XMODMAP = Xmodmap
XINITRC = xinitrc

all: xorg

.PHONY: all clean xorg

xorg:
	-ln --symbolic $(CURRENT_DIR)/$(XRESOURCES) $(HOME)/.Xresources
	-ln --symbolic $(CURRENT_DIR)/$(XDEFAULTS) $(HOME)/.Xdefaults
	-ln --symbolic $(CURRENT_DIR)/$(XMODMAP) $(HOME)/.Xmodmap
	-ln --symbolic $(CURRENT_DIR)/$(XINITRC) $(HOME)/.xinitrc

clean:
	-rm --interactive $(HOME)/.Xresources
	-rm --interactive $(HOME)/.Xdefaults
	-rm --interactive $(HOME)/.Xmodmap
	-rm --interactive $(HOME)/.xinitrc
