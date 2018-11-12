XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

MSMTP_DIR = msmtp

all: msmtp

.PHONY: all clean msmtp

msmtp:
	-mkdir $(XDG_CONFIG_HOME)
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(MSMTP_DIR) $(XDG_CONFIG_HOME)/msmtp


clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/msmtp
