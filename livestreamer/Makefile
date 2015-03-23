CURRENT_DIR = $(shell pwd)

LIVESTREAMERRC = livestreamerrc

all: livestreamer

.PHONY: all clean livestreamer

livestreamer:
	-ln --symbolic $(CURRENT_DIR)/$(LIVESTREAMERRC) $(HOME)/.livestreamerrc

clean:
	-rm --interactive $(HOME)/.livestreamerrc
