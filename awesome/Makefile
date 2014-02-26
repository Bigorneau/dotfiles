CURRENT_DIR = $(shell pwd)

AWESOME_DIR = awesome

all: awesome

.PHONY: all clean awesome

awesome:
	ln -v -s $(CURRENT_DIR)/$(AWESOME_DIR) $(HOME)/.config/awesome

clean:
	rm -i $(HOME)/.config/awesome
