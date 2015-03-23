XDG_CONFIG_HOME ?= $(HOME)/.config
CURRENT_DIR = $(shell pwd)

SYSTEMD_USER_DIR = user

all: user-services

.PHONY: all clean user-services

user-services:
	-mkdir -pv $(XDG_CONFIG_HOME)/systemd/user
	-ln -t $(XDG_CONFIG_HOME)/systemd/user -s $(CURRENT_DIR)/$(SYSTEMD_USER_DIR)/*.service

clean:
	-rm -fr $(XDG_CONFIG_HOME)/systemd/user/*
