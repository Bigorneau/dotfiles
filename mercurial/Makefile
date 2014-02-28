CURRENT_DIR = $(shell pwd)

HGRC = hgrc

all: mercurial

.PHONY: all clean mercurial

mercurial:
	ln -s $(CURRENT_DIR)/$(HGRC) $(HOME)/.hgrc

clean:
	-rm -i $(HOME)/.hgrc
