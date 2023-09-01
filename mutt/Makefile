XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

MUTTRC = muttrc
MUTTDIR = mutt
MAILCAP = mailcap
MUTT_GPGRC = /usr/share/doc/mutt/samples/gpg.rc

all: mutt mailcap

.PHONY: all clean mutt mailcap

mutt:
	-mkdir -p $(XDG_CONFIG_HOME)/mutt
	-cp $(MUTT_GPGRC) $(XDG_CONFIG_HOME)/mutt/gpg.rc
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(MUTTDIR) $(XDG_CONFIG_HOME)/mutt/mutt
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(MUTTRC) $(XDG_CONFIG_HOME)/mutt/muttrc
	-ln --symbolic $(CURRENT_DIR)/$(MUTTDIR) $(XDG_CONFIG_HOME)

mailcap:
	-ln --symbolic $(CURRENT_DIR)/$(MAILCAP) $(HOME)/.mailcap

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/mutt/muttrc
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/mutt/mutt
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/mutt/gpg.rc
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/mutt
	-rm $(RM_OPTIONS) $(HOME)/.mailcap
