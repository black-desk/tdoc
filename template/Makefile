# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

.PHONY: all
all: pdf

ENTRY=index.typ
SOURCES=$(ENTRY)

.PHONY: pdf
pdf: index.pdf

index.pdf: $(SOURCES)
	typst compile $(ENTRY) --format pdf

.PHONY: watch
watch:
	typst watch $(ENTRY)
