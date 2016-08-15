XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

RETROARCHCFG = retroarch.cfg

all: retroarch

.PHONY: all clean retroarch

retroarch:
	-mkdir -pv $(XDG_CONFIG_HOME)/retroarch
	-ln --symbolic $(CURRENT_DIR)/$(RETROARCHCFG) $(XDG_CONFIG_HOME)/retroarch/retroarch.cfg

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/retroarch/retroarch.cfg
