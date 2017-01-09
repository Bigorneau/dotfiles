XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

GTK_20 = gtk-2.0
GTK_30 = gtk-3.0

all: gtk

.PHONY: all clean gtk

gtk:
	-ln --symbolic $(CURRENT_DIR)/$(GTK_20) $(XDG_CONFIG_HOME)/gtk-2.0
	-ln --symbolic $(CURRENT_DIR)/$(GTK_30) $(XDG_CONFIG_HOME)/gtk-3.0

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/gtk-2.0
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/gtk-3.0
