CURRENT_DIR = $(shell pwd)

VALGRINDRC = valgrindrc

all: valgrind

.PHONY: all clean valgrind

valgrind:
	-ln --symbolic $(CURRENT_DIR)/$(VALGRINDRC) $(HOME)/.valgrindrc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.valgrindrc
