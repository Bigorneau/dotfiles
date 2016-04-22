CURRENT_DIR = $(shell pwd)

SQLITERC = sqliterc

all: sqlite

.PHONY: all clean sqlite

sqlite:
	-ln --symbolic $(CURRENT_DIR)/$(SQLITERC) $(HOME)/.sqliterc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.sqliterc
