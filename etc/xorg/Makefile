XORG_CONF_SYS = /etc/X11/xorg.conf.d
XORG_CONF_DIR = xorg.conf.d

XKB_SYMBOLS_SYS = /usr/share/X11/xkb/symbols
XKB_SYMBOLS_DIR = xkb-symbols

all: xorg xkb

.PHONY: all clean xorg xkb

xorg:
	-cp -rv $(XORG_CONF_DIR) $(XORG_CONF_SYS)

xkb:
	-cp -rv $(XKB_SYMBOLS_DIR) $(XKB_SYMBOLS_SYS)
