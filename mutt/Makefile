CURRENT_DIR = $(shell pwd)

MUTTRC = muttrc
MUTTDIR = mutt
MAILCAP = mailcap

all: mutt mailcap

.PHONY: all clean mutt mailcap

mutt:
	-ln --symbolic $(CURRENT_DIR)/$(MUTTRC) $(HOME)/.muttrc
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(MUTTDIR) $(HOME)/.mutt

mailcap:
	-ln --symbolic $(CURRENT_DIR)/$(MAILCAP) $(HOME)/.mailcap

clean:
	-rm $(RM_OPTIONS) $(HOME)/.muttrc
	-rm $(RM_OPTIONS) $(HOME)/.mutt
	-rm $(RM_OPTIONS) $(HOME)/.mailcap
