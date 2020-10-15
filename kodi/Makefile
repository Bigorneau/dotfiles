CURRENT_DIR = $(shell pwd)
KODI_ADVANCED_SETTINGS = advancedsettings.xml

all: kodi

.PHONY: all clean kodi

kodi:
	-mkdir --parents $(HOME)/.kodi/userdata
	-ln --symbolic $(CURRENT_DIR)/advancedsettings.xml $(HOME)/.kodi/userdata/advancedsettings.xml

clean:
	-rm $(RM_OPTIONS) $(HOME)/.kodi/userdata/advancedsettings.xml
