CURRENT_DIR = $(shell pwd)

LIVESTREAMERRC = livestreamerrc

all: livestreamer

.PHONY: all clean livestreamer

livestreamer:
	-ln -s $(CURRENT_DIR)/$(LIVESTREAMERRC) $(HOME)/.livestreamerrc

clean:
	-rm -i $(HOME)/.livestreamerrc
