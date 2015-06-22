CURRENT_DIR = $(shell pwd)

GITCONFIG = gitconfig

all: git

.PHONY: all clean git

git:
	-ln --symbolic $(CURRENT_DIR)/$(GITCONFIG) $(HOME)/.gitconfig

clean:
	-rm $(RM_OPTIONS) $(HOME)/.gitconfig
