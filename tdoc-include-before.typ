// SPDX-FileCopyrightText: Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

#set par(
  first-line-indent: (
    amount: 2em,
    all: true,
  ),
)

#show quote: set text(
  font: "LXGW WenKai",
)

#show figure.where(
  kind: table,
): set block(
  breakable: true,
)

// https://typst.app/docs/reference/model/table#parameters-stroke
// Use default stroke (1pt + black)
#set table(
  stroke: 1pt + black,
)
