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

Pandoc 模板项目，用于将 GFM (GitHub Flavored
Markdown) 通过 Typst 转换为 PDF，同时支持输出 Docx。

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
tdoc input.md -o output.pdf
tdoc input.md -o output.docx
tdoc input.md -o output.typ
```

根据输出文件扩展名自动选择渲染管线：`.pdf`/`.typ` 走 Typst，`.docx`
走 Word 参考文档（`reference.docx`）。
