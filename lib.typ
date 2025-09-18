// SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

#let document(
  title,
  authors: (),
  createdAt: datetime.today(),
  abstract: [],
  glossary-entries: (),
) = it => {
  import "@preview/cjk-unbreak:0.2.0": remove-cjk-break-space
  show: remove-cjk-break-space

  import "@preview/hydra:0.6.2": hydra

  set page(
    header: context {
      set par(first-line-indent: 0em)
      strong(title)
      h(1fr)
      hydra(1)
      line(length: 100%)
    },
    footer: context {
      line(length: 100%)
      align(
        center,
        counter(page).display(
          "1 / 1",
          both: true,
        ),
      )
    }
  )

  set heading(numbering: "1.1.1")
  show heading: it => {
    set text(
      font: "Noto Sans CJK SC",
      weight: "bold",
    )
    it
  }

  set par(
    first-line-indent: (
      all: true,
      amount: 2em,
    )
  )

  set quote(
    block: true,
    quotes: false,
  )

  show quote: set pad(left: 2em)
  show quote: set text(font: "LXGW WenKai")

  show link: it => { underline(it) }

  set text(font: "Noto Serif CJK SC")

  align(
    center,
    text(
      title,
      font: "Noto Sans CJK SC",
      weight: "bold",
      size: 2em,
    )
  )

  for author in authors {
    align(right, [
      #author.name #link("mailto:"+author.email)[\<#author.email>]
    ])
  }

  align(right, [
    创建于：#createdAt.display()
  ])

  align(right, [
    构建于：#datetime.today().display()
  ])

  import "@preview/glossarium:0.5.9": make-glossary, register-glossary, print-glossary
  show: make-glossary
  register-glossary(glossary-entries)

  line(length: 100%)

  abstract

  line(length: 100%)
  outline(title: none)
  line(length: 100%)

  it

  if glossary-entries.len() != 0 [
    = 术语表

    #print-glossary(
     glossary-entries
    )
  ]
}
