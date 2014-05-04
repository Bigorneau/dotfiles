CURRENT_DIR = $(shell pwd)

GITCONFIG = gitconfig

all: git

.PHONY: all clean git

git:
	-ln -s $(CURRENT_DIR)/$(GITCONFIG) $(HOME)/.gitconfig

clean:
	-rm -i $(HOME)/.gitconfig
