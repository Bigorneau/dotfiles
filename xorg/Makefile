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
	-rm $(RM_OPTIONS) $(HOME)/.Xresources
	-rm $(RM_OPTIONS) $(HOME)/.Xdefaults
	-rm $(RM_OPTIONS) $(HOME)/.Xmodmap
	-rm $(RM_OPTIONS) $(HOME)/.xinitrc
