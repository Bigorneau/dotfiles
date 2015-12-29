XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

PULSE_DIR = pulse

all: pulse

.PHONY: all clean pulse

pulse:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(PULSE_DIR) $(XDG_CONFIG_HOME)/pulse

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/pulse
