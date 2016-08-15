XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

ES_SYSTEMS = es_systems.cfg

all: emulationstation

.PHONY: all clean emulationstation

emulationstation:
	-mkdir -pv $(XDG_CONFIG_HOME)/emulationstation
	-ln --symbolic $(CURRENT_DIR)/$(ES_SYSTEMS) $(XDG_CONFIG_HOME)/emulationstation/es_systems.cfg

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/emulationstation/es_systems.cfg
