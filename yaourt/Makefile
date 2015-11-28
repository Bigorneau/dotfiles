CURRENT_DIR = $(shell pwd)

YAOURTRC = yaourtrc

all: yaourt

.PHONY: all yaourt

devel:
	-mkdir --parents --verbose $(HOME)/aur/devel
	-mkdir --parents --verbose $(HOME)/aur/src

yaourt: devel
	-ln --symbolic $(CURRENT_DIR)/$(YAOURTRC) $(HOME)/.yaourtrc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.yaourtrc
