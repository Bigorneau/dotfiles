XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

all: xdg xdg-compatibility

.PHONY: all clean xdg xdg-compatibility

# symbolic link for programs that have hardcoded path for XDG dirs

XDG_DESKTOP_DIR = $(HOME)/desktop
XDG_DOCUMENTS_DIR = $(HOME)/documents
XDG_DOWNLOAD_DIR = $(HOME)/downloads
XDG_MUSIC_DIR = $(HOME)/music
XDG_PICTURES_DIR = $(HOME)/pictures
XDG_PUBLICSHARE_DIR = $(HOME)/public
XDG_TEMPLATES_DIR = $(HOME)/.templates
XDG_VIDEOS_DIR = $(HOME)/videos

xdg-compatibility:
	-mkdir --parents $(XDG_DESKTOP_DIR)
	-mkdir --parents $(XDG_DOCUMENTS_DIR)
	-mkdir --parents $(XDG_DOWNLOAD_DIR)
	-mkdir --parents $(XDG_MUSIC_DIR)
	-mkdir --parents $(XDG_PICTURES_DIR)
	-mkdir --parents $(XDG_PUBLICSHARE_DIR)
	-mkdir --parents $(XDG_TEMPLATES_DIR)
	-mkdir --parents $(XDG_VIDEOS_DIR)

	-mv --backup $(HOME)/Desktop/* $(XDG_DESKTOP_DIR)/
	-mv --backup $(HOME)/Documents/* $(XDG_DOCUMENTS_DIR)/
	-mv --backup $(HOME)/Downloads/* $(XDG_DOWNLOAD_DIR)/
	-mv --backup $(HOME)/Music/* $(XDG_MUSIC_DIR)/
	-mv --backup $(HOME)/Pictures/* $(XDG_PICTURES_DIR)/
	-mv --backup $(HOME)/Public/* $(XDG_PUBLICSHARE_DIR)/
	-mv --backup $(HOME)/.Templates/* $(XDG_TEMPLATES_DIR)/
	-mv --backup $(HOME)/Videos/* $(XDG_VIDEOS_DIR)/

	-rmdir $(HOME)/Desktop
	-rmdir $(HOME)/Documents
	-rmdir $(HOME)/Downloads
	-rmdir $(HOME)/Music
	-rmdir $(HOME)/Pictures
	-rmdir $(HOME)/Public
	-rmdir $(HOME)/.Templates
	-rmdir $(HOME)/Videos

	-ln --symbolic --no-dereference $(XDG_DESKTOP_DIR) $(HOME)/Desktop
	-ln --symbolic --no-dereference $(XDG_DOCUMENTS_DIR) $(HOME)/Documents
	-ln --symbolic --no-dereference $(XDG_DOWNLOAD_DIR) $(HOME)/Downloads
	-ln --symbolic --no-dereference $(XDG_MUSIC_DIR) $(HOME)/Music
	-ln --symbolic --no-dereference $(XDG_PICTURES_DIR) $(HOME)/Pictures
	-ln --symbolic --no-dereference $(XDG_PUBLICSHARE_DIR) $(HOME)/Public
	-ln --symbolic --no-dereference $(XDG_TEMPLATES_DIR) $(HOME)/.Templates
	-ln --symbolic --no-dereference $(XDG_VIDEOS_DIR) $(HOME)/Videos

xdg:
	-ln --symbolic $(CURRENT_DIR)/user-dirs.dirs $(XDG_CONFIG_HOME)/user-dirs.dirs

clean:
	-rm $(RM_OPTIONS) $(XDG_CONFIG_HOME)/user-dirs.dirs
