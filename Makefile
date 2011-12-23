CONFIG_DIR		= config.`date +%F`
PACKAGE_NAME	= config.`date +%F`.tar.gz
MKDIRS			+=

HAS_INCLUDE		= $(shell date)

.PHONY: all help package install
all:
	@make help

help:
	@echo "Usage: make [options]"
	@echo
	@echo "Options"
	@echo "    make help        - show this message"
	@echo "    make package     - package bash & vim configure"
	@echo "    make install     - install configure in package"

package:
	@echo "package bash & vim configure ..."
	mkdir -p $(CONFIG_DIR)
	@make copy_all_bashrc
	@make copy_all_bin
	rm -f $(PACKAGE_NAME)
	tar zcvf $(PACKAGE_NAME) $(CONFIG_DIR)
	rm -rf $(CONFIG_DIR)

install:
	cp -rf .bash.d ~/
	cp -rf .local ~/
	cp -rf .inputrc ~/

.PHONY: copy_all_bashrc copy_all_bin
copy_all_bashrc:
	@echo "copy bashrc ..."
	mkdir -p $(CONFIG_DIR)/.bash.d
	@cp -f bashrc *.bashrc $(CONFIG_DIR)/.bash.d/
	@cp -f Makefile $(CONFIG_DIR)/

copy_all_bin:
	mkdir -p $(CONFIG_DIR)/.local/bin
	@cp -f ~/.local/bin/z.sh $(CONFIG_DIR)/.local/bin/
	@cp -f ~/.local/bin/color* $(CONFIG_DIR)/.local/bin/
	@cp -f ~/.local/bin/bashmarks.sh $(CONFIG_DIR)/.local/bin/
	@cp -f ~/.local/bin/ack $(CONFIG_DIR)/.local/bin/
	@cp -f ~/.local/bin/dynmotd $(CONFIG_DIR)/.local/bin/
	@cp -f ~/.local/bin/termcolor.py $(CONFIG_DIR)/.local/bin/

$(sort $(MKDIRS)):
	mkdir -p $@

clean:
	rm -rf $(CONFIG_DIR)
	rm -rf $(PACKAGE_NAME)
