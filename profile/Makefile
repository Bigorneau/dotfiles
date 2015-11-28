CURRENT_DIR = $(shell pwd)

all: profile

.PHONY: all clean profile

profile:
	-ln --symbolic $(CURRENT_DIR)/profile $(HOME)/.profile
	-ln --symbolic $(CURRENT_DIR)/pam_environment $(HOME)/.pam_environment

clean:
	-rm $(RM_OPTIONS) $(HOME)/.profile
	-rm $(RM_OPTIONS) $(HOME)/.pam_environment
