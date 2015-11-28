USER ?= $(whoami)
CURRENT_DIR = $(shell pwd)

CUPS_PDF_CONF = /etc/cups/cups-pdf.conf
POST_PROCESSING = cups-pdf-post-processing.sh

all: cups-pdf

.PHONY: all clean cups-pdf

cups-pdf:
	-sed -i 's@#Out /var/spool/cups-pdf/\$${USER}@Out /home/\$${USER}/cups@g' $(CUPS_PDF_CONF)
	-sed -i 's@#PostProcessing@PostProcessing /usr/local/bin/cups-pdf-post-processing.sh@g' $(CUPS_PDF_CONF)
	-ln --symbolic $(CURRENT_DIR)/$(POST_PROCESSING) /usr/local/bin/$(POST_PROCESSING)

clean:
	-rm $(RM_OPTIONS) /usr/local/bin/$(POST_PROCESSING)
