# Makefile

# Usage:
# make install WIKIDIR=<wiki_directory> SCRIPTDIR=<install_directory>

install:
	@echo "Creating directory $(WIKIDIR)"
	@mkdir -p $(WIKIDIR)
	@sed -i "s|$WIKIDIR=.*|$WIKIDIR=$(WIKIDIR)|" ./wiki
	@echo "Installing script into $(SCRIPTDIR)"
	@mkdir -p $(SCRIPTDIR)
	@cp wiki $(SCRIPTDIR)/

help:
	@echo "Usage:"
	@echo "make install WIKIDIR=<wiki_directory> SCRIPTDIR=<install_directory>" 
