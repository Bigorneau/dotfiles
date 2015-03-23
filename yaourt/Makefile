CURRENT_DIR = $(shell pwd)

YAOURTRC = yaourtrc

all: yaourt

.PHONY: all yaourt

devel:
	-mkdir -p $(HOME)/aur/devel

yaourt: devel
	-ln --symbolic $(CURRENT_DIR)/$(YAOURTRC) $(HOME)/.yaourtrc

clean:
	-rm --interactive $(HOME)/.yaourtrc
