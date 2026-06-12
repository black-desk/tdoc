# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

PREFIX ?= $(HOME)/.local

DATADIR := $(PREFIX)/share/pandoc
BINDIR := $(PREFIX)/bin
DEFAULTSDIR := $(DATADIR)/defaults

.PHONY: all
all:

.PHONY: install
install:
	install -d $(DESTDIR)$(DEFAULTSDIR)
	install -m 644 tdoc.yaml $(DESTDIR)$(DEFAULTSDIR)/tdoc.yaml
	install -m 644 tdoc-include-before.typ $(DESTDIR)$(DEFAULTSDIR)/tdoc-include-before.typ
	install -m 755 tdoc $(DESTDIR)$(BINDIR)/tdoc

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)$(DEFAULTSDIR)/tdoc*
	rm $(DESTDIR)$(BINDIR)/tdoc
