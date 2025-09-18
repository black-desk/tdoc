// SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

// NOTE:
// See https://github.com/black-desk/tdoc
#import "@local/tdoc:0.1.0": document

#show: document(
  [
    文档标题
  ],
  authors: (
    (
      name: "姓名",
      email: "邮箱"
    ),
  ),
  createdAt: datetime.today(),
  abstract: include "abstract.typ",
)

#include "content.typ"

#pdf.embed(
  "main.typ",
  relationship: "source",
)

#pdf.embed(
  "abstract.typ",
  relationship: "source",
)

#pdf.embed(
  "content.typ",
  relationship: "source",
)
