# OS dependent see https://github.com/sharkdp/bat#configuration-file
BAT_CONFIG_FILE ?= $(shell bat --config-file)
CURRENT_DIR = $(shell pwd)

CONFIG = config

all: bat

.PHONY: all clean bat

bat:
	-mkdir --parents "$(shell dirname $(BAT_CONFIG_FILE))"
	-ln --symbolic $(CURRENT_DIR)/$(CONFIG) $(BAT_CONFIG_FILE)

clean:
	-rm $(RM_OPTIONS) $(BAT_CONFIG_FILE)
