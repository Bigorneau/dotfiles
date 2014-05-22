CURRENT_DIR = $(shell pwd)

MUTTRC = muttrc

all: mutt

.PHONY: all clean mutt

mutt:
	-ln -s $(CURRENT_DIR)/$(MUTTRC) $(HOME)/.muttrc

clean:
	-rm -i $(HOME)/.muttrc
