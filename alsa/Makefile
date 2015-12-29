CURRENT_DIR = $(shell pwd)

ASOUNDRC = asoundrc

all: alsa

.PHONY: all clean alsa

alsa:
	-ln --symbolic $(CURRENT_DIR)/$(ASOUNDRC) $(HOME)/.asoundrc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.asoundrc
