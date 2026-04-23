# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

PREFIX ?= $(HOME)/.local

DATADIR := $(PREFIX)/share/pandoc
TEMPLATEDIR := $(DATADIR)/templates
DEFAULTSDIR := $(DATADIR)/defaults

.PHONY: install

install:
	install -d $(DESTDIR)$(TEMPLATEDIR)
	install -m 644 tdoc-include-before.typ $(DESTDIR)$(TEMPLATEDIR)/tdoc-include-before.typ
	install -d $(DESTDIR)$(DEFAULTSDIR)
	install -m 644 tdoc.yaml $(DESTDIR)$(DEFAULTSDIR)/tdoc.yaml
