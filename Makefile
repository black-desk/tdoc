# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

PREFIX ?= $(HOME)/.local

DATADIR := $(PREFIX)/share/pandoc
TEMPLATEDIR := $(DATADIR)/templates
DEFAULTSDIR := $(DATADIR)/defaults

.PHONY: all
all:
	@echo Nothing to do.

.PHONY: install
install:
	install -d $(DESTDIR)$(DEFAULTSDIR)
	install -m 644 tdoc.yaml $(DESTDIR)$(DEFAULTSDIR)/tdoc.yaml
	install -m 644 tdoc-include-before.typ $(DESTDIR)$(DEFAULTSDIR)/tdoc-include-before.typ

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)$(DEFAULTSDIR)/tdoc*
