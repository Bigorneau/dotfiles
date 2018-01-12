UDEV_RULES_DIR = /etc/udev/rules.d

RULES = $(shell find rules -name *.rules)

all: udev

.PHONY: all clean udev

udev:
	-for rule in $(RULES); do cp -v $$rule $(UDEV_RULES_DIR); done

reload-rules:
	-udevadm control --reload-rules
	-udevadm trigger

clean:
	-for rule in $(RULES); do rm $(RM_OPTIONS) $(UDEV_RULES_DIR)/$$rule; done
