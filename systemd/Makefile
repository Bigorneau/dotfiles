CURRENT_DIR = $(shell pwd)

SYSTEMD_USER_DIR = user

all: user-services

.PHONY: all clean user-services

user-services:
	-mkdir -pv $(HOME)/.config/systemd/user
	-ln -t $(HOME)/.config/systemd/user -s $(CURRENT_DIR)/$(SYSTEMD_USER_DIR)/*.service

clean:
	-rm -fr $s $(HOME)/.config/systemd/user/*
