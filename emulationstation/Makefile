XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

ES_DIR = emulationstation

all: emulationstation

.PHONY: all clean emulationstation

emulationstation:
	-mkdir -pv $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(ES_DIR) $(XDG_CONFIG_HOME)/emulationstation

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/emulationstation
