CURRENT_DIR = $(shell pwd)

SSH_RC= rc

all: ssh

.PHONY: all clean ssh

ssh:
	-ln --symbolic $(CURRENT_DIR)/$(SSH_RC) $(HOME)/.ssh/rc

clean:
	-rm $(RM_OPTIONS) $(HOME)/.ssh/rc
