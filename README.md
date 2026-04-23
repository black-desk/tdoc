---
title: tdoc使用文档
author: black_desk
date: 2026-04-23
---

<!--
SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>

SPDX-License-Identifier: MIT
-->

# tdoc

Pandoc 模板项目，用于将 GFM (GitHub Flavored Markdown) 通过 Typst 转换为 PDF。

## 依赖

- [Pandoc](https://pandoc.org/) >= 3.0（需内置 Typst 支持）
- [Typst](https://typst.app/)（作为 PDF 引擎）
- [Noto CJK fonts](https://github.com/notofonts/noto-cjk)
- [Maple Mono](https://github.com/subframe7536/maple-font)
- [LxgwWenKai](https://github.com/lxgw/LxgwWenkai)

## 安装

```bash
make install
```

## 使用方法

```bash
pandoc -d tdoc input.md -o output.pdf
```
