XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

CHROME_FLAGS_CONF = chrome-flags.conf
CHROMIUM_FLAGS_CONF = chromium-flags.conf

all: chrome

.PHONY: all clean chrome

chrome:
	-ln --symbolic $(CURRENT_DIR)/$(CHROME_FLAGS_CONF) $(XDG_CONFIG_HOME)/chrome-flags.conf
	-ln --symbolic $(CURRENT_DIR)/$(CHROME_FLAGS_CONF) $(XDG_CONFIG_HOME)/chromium-flags.conf

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/chrome-flags.conf
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/chromium-flags.conf
