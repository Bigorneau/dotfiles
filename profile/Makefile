CURRENT_DIR = $(shell pwd)

all: profile

.PHONY: all clean profile

profile:
	-ln --symbolic $(CURRENT_DIR)/profile $(HOME)/.profile
	-ln --symbolic $(CURRENT_DIR)/pam_environment $(HOME)/.pam_environment

clean:
	-rm --interactive $(HOME)/.profile
	-rm --interactive $(HOME)/.pam_environment
