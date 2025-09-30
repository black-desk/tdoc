// SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

// NOTE:
// See https://github.com/black-desk/tdoc
#import "@local/tdoc:0.1.0": document, embed_source

#import "术语表.typ": glossary

#show: document(
  [
    Typst文档模版
  ],
  authors: (
    (
      name: "陈麟轩",
      email: "me@black-desk.cn"
    ),
  ),
  createdAt: datetime.today(),
  abstract: include "摘要.typ",
  glossary: glossary,
  references: bibliography("参考文献.bib"),
)

#include "正文.typ"

#embed_source("Typst文档模版.zip")
