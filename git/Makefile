CURRENT_DIR = $(shell pwd)

GITCONFIG = gitconfig
GITCONFIG_WORK = gitconfig_work

all: git

.PHONY: all clean git work

git:
	ln -s $(CURRENT_DIR)/$(GITCONFIG) $(HOME)/.gitconfig

work:
	ln -s $(CURRENT_DIR)/$(GITCONFIG_WORK) $(HOME)/.gitconfig

clean:
	rm -i $(HOME)/.gitconfig
