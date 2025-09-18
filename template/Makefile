# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

.PHONY: all
all: pdf

ENTRY=main.typ
SOURCES=\
	$(ENTRY) \
	abstract.typ \
	content.typ

.PHONY: pdf
pdf: main.pdf

main.pdf: $(SOURCES)
	typst compile $(ENTRY) --format pdf

.PHONY: watch
watch:
	typst watch $(ENTRY)
