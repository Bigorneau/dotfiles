CURRENT_DIR = $(shell pwd)

UZBL_DIR = uzbl

all: uzbl

.PHONY: all clean uzbl

uzbl:
	-ln -s $(CURRENT_DIR)/$(UZBL_DIR) $(HOME)/.config/uzbl

clean:
	-rm -i $(HOME)/.config/uzbl
