// SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

#let document(
  title,
  authors: (),
  createdAt: datetime.today(),
  abstract: none,
  glossary: (),
  references: none,
) = it => {
  set text(lang: "zh")
  set par(justify: true)

  import "@preview/cjk-unbreak:0.2.0": remove-cjk-break-space
  show: remove-cjk-break-space

  import "@preview/hydra:0.6.2": hydra

  set page(
    header: context {
      set par(first-line-indent: 0em)
      strong(title)
      h(1fr)
      hydra(1)
    },
    footer: context {
      align(
        center,
        counter(page).display(
          "1 / 1",
          both: true,
        ),
      )
    }
  )

  set heading(numbering: "1.")
  show heading: it => {
    set text(
      font: "Noto Sans CJK SC",
      weight: "bold",
    )
    it
  }

  set quote(
    block: true,
  )

  show quote: set pad(left: 2em)
  show quote: set text(font: "LXGW WenKai")

  show link: it => { underline(it) }

  set text(font: "Noto Serif CJK SC")

  show figure: it => {
    align(center)[#it]
  }

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
  register-glossary(glossary)

  if abstract != none {
    line(length: 100%)
  }

  abstract

  line(length: 100%)

  outline()

  line(length: 100%)

  set par(
    first-line-indent: (
      all: true,
      amount: 2em,
    )
  )

  it

  set heading(numbering: none)

  if glossary.len() != 0 [
    = 术语表
    #print-glossary(
     glossary
    )
  ]

  references
}

// NOTE: https://github.com/typst/typst/issues/2025#issuecomment-2500280417
#import "@preview/based:0.2.0": base64
#let embed_source(path) = context {
  let not-found = [Could not find #raw(path)]
  let path-label = label(base64.encode(path))
  let first-time = query((context {}).func()).len() == 0
  let used-path = query(path-label).len() > 0
  if first-time or used-path [
    #pdf.embed(
      path,
      relationship: "source",
      description: "源文件压缩包",
    )#path-label
  ]
}
