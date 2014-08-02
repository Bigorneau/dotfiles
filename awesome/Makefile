CURRENT_DIR = $(shell pwd)

AWESOME_DIR = awesome

VICIOUS_REPO = http://git.sysphere.org/vicious
OBVIOUS_REPO = https://github.com/hoelzro/obvious.git

all: awesome extras

.PHONY: all clean awesome extras

awesome:
	-mkdir $(HOME)/.config
	-ln -s $(CURRENT_DIR)/$(AWESOME_DIR) $(HOME)/.config/awesome

extras:
	-git clone $(VICIOUS_REPO) $(AWESOME_DIR)/vicious
	-git clone $(OBVIOUS_REPO) $(AWESOME_DIR)/obvious

clean:
	-rm -i $(HOME)/.config/awesome
	-rm -fr $(AWESOME_DIR)/vicious
	-rm -fr $(AWESOME_DIR)/obvious
