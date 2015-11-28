#DIRS=$(sort $(dir $(wildcard .)))
DIRS=$(shell find . -maxdepth 1 -type d -not -path "./.git" -not -path ".")

all: $(DIRS)

.PHONY: all $(DIRS)

$(DIRS):
	-make -C $@

clean:
	-for dirs in $(DIRS); do make clean -C $$dirs; done
