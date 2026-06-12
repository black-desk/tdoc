# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

PREFIX ?= $(HOME)/.local

DATADIR := $(PREFIX)/share
BINDIR := $(PREFIX)/bin
PANDOCDEFAULTSDIR := $(DATADIR)/pandoc/defaults

.PHONY: all
all: check

.PHONY: check
check:
	command -v pandoc
	command -v typst
	typst fonts | grep "Noto Serif CJK SC"
	typst fonts | grep "Maple Mono NF"
	typst fonts | grep "LXGW WenKai"


.PHONY: install
install: check
	install -d $(DESTDIR)$(PANDOCDEFAULTSDIR)
	install -m 644 tdoc.yaml $(DESTDIR)$(PANDOCDEFAULTSDIR)/tdoc.yaml
	install -m 644 tdoc-include-before.typ $(DESTDIR)$(PANDOCDEFAULTSDIR)/tdoc-include-before.typ
	install -m 755 tdoc $(DESTDIR)$(BINDIR)/tdoc

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)$(PANDOCDEFAULTSDIR)/tdoc*
	rm $(DESTDIR)$(BINDIR)/tdoc
