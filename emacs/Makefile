CURRENT_DIR = $(shell pwd)

EMACS = emacs
EMACS_DIR = emacs.d

all: emacs

.PHONY: all clean emacs

emacs:
	-ln --symbolic $(CURRENT_DIR)/$(EMACS) $(HOME)/.emacs
	-ln --symbolic $(CURRENT_DIR)/$(EMACS_DIR) $(HOME)/.emacs.d

clean:
	-rm --interactive $(HOME)/.emacs
	-rm --interactive $(HOME)/.emacs.d
