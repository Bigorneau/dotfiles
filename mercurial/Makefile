CURRENT_DIR = $(shell pwd)

HGRC = hgrc

all: mercurial

.PHONY: all clean mercurial

mercurial:
	-ln --symbolic $(CURRENT_DIR)/$(HGRC) $(HOME)/.hgrc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.hgrc
