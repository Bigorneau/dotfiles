CURRENT_DIR = $(shell pwd)

MUTTRC = muttrc
MAILCAP = mailcap

all: mutt mailcap

.PHONY: all clean mutt mailcap

mutt:
	-ln -s $(CURRENT_DIR)/$(MUTTRC) $(HOME)/.muttrc

mailcap:
	-ln -s $(CURRENT_DIR)/$(MAILCAP) $(HOME)/.mailcap

clean:
	-rm -i $(HOME)/.muttrc
	-rm -i $(HOME)/.mailcap
