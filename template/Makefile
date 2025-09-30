# SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
#
# SPDX-License-Identifier: MIT

NAME=Typst文档模版
ENTRY=$(NAME).typ
PDF=$(NAME).pdf
SOURCE_ZIP=$(NAME).zip

.PHONY: all
all:
	rm -f "$(SOURCE_ZIP)"
	zip -r "$(SOURCE_ZIP)" . -x '*.pdf' '*.zip' '.*' '*/.*'
	typst compile "$(ENTRY)"

.PHONY: open
open: all
	xdg-open "$(PDF)" || open "$(PDF)" || true

.PHONY: watch
watch: open
	typst watch "$(ENTRY)"
