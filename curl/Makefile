CURRENT_DIR = $(shell pwd)

CURLRC = curlrc

all: curl

.PHONY: all clean curl

curl:
	-ln --symbolic $(CURRENT_DIR)/$(CURLRC) $(HOME)/.curlrc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.curlrc
