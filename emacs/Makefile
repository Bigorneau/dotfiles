CURRENT_DIR = $(shell pwd)

EMACS = emacs
EMACS_DIR = emacs.d

all: emacs

.PHONY: all clean emacs

emacs:
	ln -s $(CURRENT_DIR)/$(EMACS) $(HOME)/.emacs
	ln -s $(CURRENT_DIR)/$(EMACS_DIR) $(HOME)/.emacs.d

clean:
	-rm -i $(HOME)/.emacs
	-rm -i $(HOME)/.emacs.d
