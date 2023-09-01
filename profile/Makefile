XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

ENVIRONMENT_DIR = environment.d

all: profile

.PHONY: all clean profile

profile:
	-ln --symbolic $(CURRENT_DIR)/profile $(HOME)/.profile
	-ln --symbolic $(CURRENT_DIR)/pam_environment $(HOME)/.pam_environment
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(ENVIRONMENT_DIR) $(XDG_CONFIG_HOME)/environment.d

clean:
	-rm $(RM_OPTIONS) $(HOME)/.profile
	-rm $(RM_OPTIONS) $(HOME)/.pam_environment
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/environment.d
