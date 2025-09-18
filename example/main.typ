// SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

// NOTE:
// See https://github.com/black-desk/tdoc
#import "@local/tdoc:0.1.0": document
#show: document(
  [
    样式示例
  ],
  authors: (
    (
      name: "Chen Linxuan",
      email: "me@black-desk.cn"
    ),
  ),
  createdAt: datetime.today(),
  abstract: include "abstract.typ",
  glossary-entries: (
    (
      key: "kouhu",
      short: "kouhu",
      description: [
        #link("https://typst.app/universe/package/kouhu")
      ]
    ),
  )
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
