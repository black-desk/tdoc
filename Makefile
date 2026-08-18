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
	install -d $(DESTDIR)$(BINDIR)
	install -m 644 share/pandoc/defaults/tdoc.yaml $(DESTDIR)$(PANDOCDEFAULTSDIR)/tdoc.yaml
	install -m 644 share/pandoc/defaults/tdoc-include-before.typ $(DESTDIR)$(PANDOCDEFAULTSDIR)/tdoc-include-before.typ
	install -m 644 share/pandoc/defaults/tdoc-reference.docx $(DESTDIR)$(PANDOCDEFAULTSDIR)/tdoc-reference.docx
	install -m 755 bin/tdoc $(DESTDIR)$(BINDIR)/tdoc

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)$(PANDOCDEFAULTSDIR)/tdoc*
	rm $(DESTDIR)$(PANDOCDEFAULTSDIR)/reference.docx
	rm $(DESTDIR)$(BINDIR)/tdoc
