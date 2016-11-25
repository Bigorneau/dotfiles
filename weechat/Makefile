CURRENT_DIR = $(shell pwd)

CURL_OPTS = --location --show-error --silent --output

WEECHAT = weechat
SCRIPTS_URL = https://weechat.org/files/scripts
SCRIPTS = buffers.pl iset.pl

all: weechat

.PHONY: all clean weechat scripts

weechat:
	-ln --symbolic --no-dereference $(CURRENT_DIR)/$(WEECHAT) $(HOME)/.weechat

scripts:
	-mkdir --parents $(WEECHAT)/perl/autoload
	-for script in $(filter %.pl, $(SOURCES)); do curl $(CURL_OPTS) $(WEECHAT)/perl/$$script $(SCRIPTS_URL)/$$script; ln --symbolic --relative $(WEECHAT)/perl/$$script $(WEECHAT)/perl/autoload/$$script; done
	-mkdir --parents $(WEECHAT)/python/autoload
	-for script in $(filter %.py, $(SOURCES)); do curl $(CURL_OPTS) $(WEECHAT)/python/$$script $(SCRIPTS_URL)/$$script; ln --symbolic --relative $(WEECHAT)/python/$$script $(WEECHAT)/python/autoload/$$script; done
	-mkdir --parents $(WEECHAT)/ruby/autoload
	-for script in $(filter %.rb, $(SOURCES)); do curl $(CURL_OPTS) $(WEECHAT)/ruby/$$script $(SCRIPTS_URL)/$$script; ln --symbolic --relative $(WEECHAT)/ruby/$$script $(WEECHAT)/ruby/autoload/$$script; done
	-mkdir --parents $(WEECHAT)/lua/autoload
	-for script in $(filter %.lua, $(SOURCES)); do curl $(CURL_OPTS) $(WEECHAT)/lua/$$script $(SCRIPTS_URL)/$$script; ln --symbolic --relative $(WEECHAT)/lua/$$script $(WEECHAT)/lua/autoload/$$script; done

clean:
	-rm $(RM_OPTIONS) $(HOME)/.weechat
	-rm --recursive --force --verbose $(RM_OPTIONS) $(WEECHAT)/{perl,python,ruby,lua}/autoload
