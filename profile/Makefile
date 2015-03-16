CURRENT_DIR = $(shell pwd)

all: profile

.PHONY: all clean profile

profile:
	-ln -s $(CURRENT_DIR)/profile $(HOME)/.profile
	-ln -s $(CURRENT_DIR)/pam_environment $(HOME)/.pam_environment

clean:
	-rm -i $(HOME)/.profile
	-rm -i $(HOME)/.pam_environment
