INSTALL_DIR := $(HOME)/.local/bin

.PHONY: compile test install

compile:
	@true

test:
	@true

install:
	@mkdir -p $(INSTALL_DIR)
	cp quick-gist $(INSTALL_DIR)/
	chmod +x $(INSTALL_DIR)/quick-gist
