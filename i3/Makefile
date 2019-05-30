XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

I3_DIR = i3
PY3STATUS_DIR = py3status

all: i3

.PHONY: all clean i3

i3:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(I3_DIR) $(XDG_CONFIG_HOME)/i3
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(PY3STATUS_DIR) $(XDG_CONFIG_HOME)/py3status

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/i3
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/py3status
