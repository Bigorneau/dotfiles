all: clone

.PHONY: all clone

clone:
	-git clone http://git.suckless.org/st /tmp/st
	-cd /tmp/st && git checkout $$(git describe --tags `git rev-list --tags --max-count=1`)
