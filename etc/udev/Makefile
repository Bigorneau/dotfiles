UDEV_RULES_DIR = /etc/udev/rules.d

DEVICE_NAME = 10-device-name.rules

all: udev

.PHONY: all clean udev

udev:
	-cp -rv $(DEVICE_NAME) $(UDEV_RULES_DIR)

reload-rules:
	-udevadm control --reload-rules
	-udevadm trigger

clean:
	-rm $(RM_OPTIONS) $(UDEV_RULES_DIR)/$(DEVICE_NAME)
