CURRENT_DIR = $(shell pwd)

MUTTRC = muttrc
MUTTDIR = mutt
MAILCAP = mailcap

all: mutt mailcap

.PHONY: all clean mutt mailcap

mutt:
	-ln --symbolic $(CURRENT_DIR)/$(MUTTRC) $(HOME)/.muttrc
	-ln --symbolic $(CURRENT_DIR)/$(MUTTDIR) $(HOME)/.mutt

mailcap:
	-ln --symbolic $(CURRENT_DIR)/$(MAILCAP) $(HOME)/.mailcap

clean:
	-rm --interactive $(HOME)/.muttrc
	-rm --interactive $(HOME)/.mutt
	-rm --interactive $(HOME)/.mailcap
