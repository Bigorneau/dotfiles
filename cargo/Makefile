CURRENT_DIR = $(shell pwd)
# https://doc.rust-lang.org/cargo/reference/config.html
CARGO_HOME ?= $(HOME)/.cargo

CARGO_CONFIG = cargo.toml

all: cargo

.PHONY: all clean cargo

cargo:
	-ln --symbolic $(CURRENT_DIR)/$(CARGO_CONFIG) $(CARGO_HOME)/cargo.toml

clean:
	-rm $(RM_OPTIONS) $(CARGO_HOME)/cargo.toml
