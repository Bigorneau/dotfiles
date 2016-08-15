CURRENT_DIR = $(shell pwd)

RETROARCHCFG = retroarch.cfg

all: retroarch

.PHONY: all clean retroarch

retroarch:
	-ln --symbolic $(CURRENT_DIR)/$(RETROARCHCFG) $(HOME)/.retroarch.cfg

clean:
	-rm $(RM_OPTIONS) $(HOME)/.retroarch.cfg
