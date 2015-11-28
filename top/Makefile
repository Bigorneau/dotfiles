CURRENT_DIR = $(shell pwd)

TOPRC = toprc

all: top

.PHONY: all clean top

top:
	-ln --symbolic $(CURRENT_DIR)/$(TOPRC) $(HOME)/.toprc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.toprc
