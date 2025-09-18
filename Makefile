# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

VERSION = 0.1.0
DESTDIR ?=

INSTALL         ?= install
INSTALL_DATA    ?= $(INSTALL) -m 644

SHELL = sh

UNAME_S = $(shell uname -s)
ifeq ($(UNAME_S),Linux)
datarootdir ?= "$${XDG_DATA_HOME:-$${HOME}/.local/share}"
else
datarootdir ?= "$${HOME}/Library/Application Support"
endif

.PHONY: all
all:
	@echo Nothin to do

.PHONY: install
install: checks install-data

.PHONY: checks
checks: check-fonts

.PHONY: check-fonts
check-fonts:
	./scripts/check-fonts.sh

tdocdir = $(DESTDIR)$(datarootdir)/typst/packages/local/tdoc/$(VERSION)

.PHONY: install-data
install-data:
	$(INSTALL) -d $(tdocdir)/template
	$(INSTALL_DATA) ./typst.toml $(tdocdir)/typst.toml
	$(INSTALL_DATA) ./lib.typ $(tdocdir)/lib.typ
	$(INSTALL_DATA) ./template/Makefile $(tdocdir)/template/Makefile
	$(INSTALL_DATA) ./template/.gitignore $(tdocdir)/template/.gitignore
	$(INSTALL_DATA) ./template/index.typ $(tdocdir)/template/index.typ
