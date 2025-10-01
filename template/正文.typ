// SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>
//
// SPDX-License-Identifier: MIT

= 特性

+ 页眉展示文档名称以及当前标题
+ 页脚展示页码
+ 显示文档构建日期
+ 摘要
+ 目录
+ 术语表
+ 参考文献
+ 在PDF中嵌入源文件的压缩包

= 标题

== 标题2
=== 标题3
==== 标题4

= 引用

#quote(attribution: [@Typst project website@noauthor_typst_2025])[
  #set text(lang:"en")
  Members of over 3,500 universities and laboratories and over 1,000 businesses are using @Typst.
]

= 列表

- 无序列表项
- 无序列表项
  - 嵌套的无序列表项
  - 嵌套的无序列表项
- 无序列表项

+ 有序列表项
+ 有序列表项
  + 嵌套的有序列表项
  + 嵌套的有序列表项
+ 有序列表项

= 正文

使用#ref(<kouhu>)生成的示例正文：

#import "@preview/kouhu:0.2.0": kouhu

#kouhu(length: 500)

= 代码块

#raw(
  lang:"cpp",
  block:true,
  read("hello world.cpp"),
)
