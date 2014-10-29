CURRENT_DIR = $(shell pwd)

MUTTRC = muttrc
MUTTDIR = mutt
MAILCAP = mailcap

all: mutt mailcap

.PHONY: all clean mutt mailcap

mutt:
	-ln -s $(CURRENT_DIR)/$(MUTTRC) $(HOME)/.muttrc
	-ln -s $(CURRENT_DIR)/$(MUTTDIR) $(HOME)/.mutt

mailcap:
	-ln -s $(CURRENT_DIR)/$(MAILCAP) $(HOME)/.mailcap

clean:
	-rm -i $(HOME)/.muttrc
	-rm -i $(HOME)/.mutt
	-rm -i $(HOME)/.mailcap
