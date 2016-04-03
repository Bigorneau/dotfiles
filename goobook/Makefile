CURRENT_DIR = $(shell pwd)

GOOBOOKRC = goobookrc

all: goobook

.PHONY: all clean goobook

goobook:
	-ln --symbolic $(CURRENT_DIR)/$(GOOBOOKRC) $(HOME)/.goobookrc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.goobookrc
