CURRENT_DIR = $(shell pwd)

HGRC = hgrc
HGRC_LOCAL = hgrc.local

all: mercurial

.PHONY: all clean mercurial

mercurial:
	-ln --symbolic $(CURRENT_DIR)/$(HGRC) $(HOME)/.hgrc
	-cp --no-clobber $(CURRENT_DIR)/$(HGRC_LOCAL) $(HOME)/.hgrc.local

clean:
	-rm $(RM_OPTIONS) $(HOME)/.hgrc
