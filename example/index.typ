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
    样式示例
  ],
  authors: (
    (
      name: "Chen Linxuan",
      email: "me@black-desk.cn"
    ),
  ),
  createdAt: datetime.today(),
  abstract: [
    tdoc的样式示例文档，文档使用kouhu以及suiji生成。
  ]
)

#pdf.embed(
  "index.typ",
  relationship: "source",
)

#import "@preview/kouhu:0.2.0": kouhu
#import "@preview/suiji:0.4.0": gen-rng-f, integers-f, shuffle-f

#let rng = gen-rng-f(42)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 4)
= #kouhu(offset: offset, length: length)

#let (rng, start) = integers-f(rng, low:1, high: 5)
#let (rng, length) = integers-f(rng, low:1, high: 4)
#let (rng, indices) = shuffle-f(rng, range(start, start + length))
#kouhu(indices: indices)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 5)
== #kouhu(offset: offset, length: length)

#let (rng, start) = integers-f(rng, low:1, high: 5)
#let (rng, length) = integers-f(rng, low:1, high: 4)
#let (rng, indices) = shuffle-f(rng, range(start, start + length))
#kouhu(indices: indices)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 5)
=== #kouhu(offset: offset, length: length)

#let (rng, start) = integers-f(rng, low:1, high: 5)
#let (rng, length) = integers-f(rng, low:1, high: 4)
#let (rng, indices) = shuffle-f(rng, range(start, start + length))
#kouhu(indices: indices)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 5)
== #kouhu(offset: offset, length: length)

#let (rng, start) = integers-f(rng, low:1, high: 5)
#let (rng, length) = integers-f(rng, low:1, high: 4)
#let (rng, indices) = shuffle-f(rng, range(start, start + length))
#kouhu(indices: indices)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 5)
=== #kouhu(offset: offset, length: length)

#let (rng, start) = integers-f(rng, low:1, high: 5)
#let (rng, length) = integers-f(rng, low:1, high: 4)
#let (rng, indices) = shuffle-f(rng, range(start, start + length))
#kouhu(indices: indices)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 4)
= #kouhu(offset: offset, length: length)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 10)
+ #kouhu(offset: offset, length: length)
#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 10)
+ #kouhu(offset: offset, length: length)
  #let (rng, offset) = integers-f(rng, high: 30)
  #let (rng, length) = integers-f(rng, low:1, high: 10)
  + #kouhu(offset: offset, length: length)
    #let (rng, offset) = integers-f(rng, high: 30)
    #let (rng, length) = integers-f(rng, low:1, high: 10)
    + #kouhu(offset: offset, length: length)
  #let (rng, offset) = integers-f(rng, high: 30)
  #let (rng, length) = integers-f(rng, low:1, high: 10)
  + #kouhu(offset: offset, length: length)
#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 10)
+ #kouhu(offset: offset, length: length)
  #let (rng, offset) = integers-f(rng, high: 30)
  #let (rng, length) = integers-f(rng, low:1, high: 10)
  - #kouhu(offset: offset, length: length)
    #let (rng, offset) = integers-f(rng, high: 30)
    #let (rng, length) = integers-f(rng, low:1, high: 10)
    - #kouhu(offset: offset, length: length)
      #let (rng, offset) = integers-f(rng, high: 30)
      #let (rng, length) = integers-f(rng, low:1, high: 10)
      - #kouhu(offset: offset, length: length)
    #let (rng, offset) = integers-f(rng, high: 30)
    #let (rng, length) = integers-f(rng, low:1, high: 10)
    - #kouhu(offset: offset, length: length)
  #let (rng, offset) = integers-f(rng, high: 30)
  #let (rng, length) = integers-f(rng, low:1, high: 10)
  - #kouhu(offset: offset, length: length)

#let (rng, offset) = integers-f(rng, high: 30)
#let (rng, length) = integers-f(rng, low:1, high: 4)
= #kouhu(offset: offset, length: length)

#quote([
  #let (rng, start) = integers-f(rng, low:1, high: 5)
  #let (rng, length) = integers-f(rng, low:1, high: 4)
  #let (rng, indices) = shuffle-f(rng, range(start, start + length))
  #kouhu(indices: indices)
])