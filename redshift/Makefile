XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

REDSHIFT_CONF = redshift.conf

all: redshift

.PHONY: all clean redshift

redshift:
	-ln --symbolic $(CURRENT_DIR)/$(REDSHIFT_CONF) $(XDG_CONFIG_HOME)/redshift.conf

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/redshift.conf
