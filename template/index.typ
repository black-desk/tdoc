// SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

// NOTE:
// Check https://github.com/black-desk/tdoc for
// instructions on how to install this package
// and build this documentation.
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
  abstract: [
    摘要
  ]
)

#pdf.embed(
  "index.typ",
  relationship: "source",
)
