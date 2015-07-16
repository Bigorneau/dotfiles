CURRENT_DIR = $(shell pwd)

GITCONFIG = gitconfig
GITCONFIG_LOCAL = gitconfig.local

all: git

.PHONY: all clean git

git:
	-ln --symbolic $(CURRENT_DIR)/$(GITCONFIG) $(HOME)/.gitconfig
	-cp --no-clobber $(CURRENT_DIR)/$(GITCONFIG_LOCAL) $(HOME)/.gitconfig.local

clean:
	-rm $(RM_OPTIONS) $(HOME)/.gitconfig
