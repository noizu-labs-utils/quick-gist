INSTALL_DIR := $(HOME)/.local/bin

.PHONY: compile test install

compile:
	@true

test:
	@true

install:
	@mkdir -p $(INSTALL_DIR)
	install -m 755 quick-gist $(INSTALL_DIR)/quick-gist
