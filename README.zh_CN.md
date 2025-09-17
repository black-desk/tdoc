<!--
SPDX-FileCopyrightText: 2025 Chen Linxuan <me@black-desk.cn>

SPDX-License-Identifier: MIT
-->

# tdoc

[![checks][badge-shields-io-checks]][actions]
[![commit activity][badge-shields-io-commit-activity]][commits]
[![contributors][badge-shields-io-contributors]][contributors]
[![release date][badge-shields-io-release-date]][releases]
![commits since release][badge-shields-io-commits-since-release]
[![codecov][badge-shields-io-codecov]][codecov]

[badge-shields-io-checks]:
  https://img.shields.io/github/check-runs/black-desk/tdoc/master

[actions]: https://github.com/black-desk/tdoc/actions

[badge-shields-io-commit-activity]:
  https://img.shields.io/github/commit-activity/w/black-desk/tdoc/master

[commits]: https://github.com/black-desk/tdoc/commits/master

[badge-shields-io-contributors]:
  https://img.shields.io/github/contributors/black-desk/tdoc

[contributors]: https://github.com/black-desk/tdoc/graphs/contributors

[badge-shields-io-release-date]:
  https://img.shields.io/github/release-date/black-desk/tdoc

[releases]: https://github.com/black-desk/tdoc/releases

[badge-shields-io-commits-since-release]:
  https://img.shields.io/github/commits-since/black-desk/tdoc/latest

[badge-shields-io-codecov]:
  https://codecov.io/github/black-desk/tdoc/graph/badge.svg?token=6TSVGQ4L9X
[codecov]: https://codecov.io/github/black-desk/tdoc

[en](README.md) | zh_CN

自用的Typst文档模板。

## 使用

```bash
git clone https://github.com/black-desk/tdoc.git
cd tdoc
make install
```

```bash
typst init '@local/tdoc:0.1.0' my_doc
```

## 许可证

如无特殊说明，该项目的代码以MIT许可证开源。

该项目遵守[REUSE规范]。

你可以使用[reuse-tool](https://github.com/fsfe/reuse-tool)生成这个项目的SPDX列表：

```bash
reuse spdx
```

[REUSE规范]: https://reuse.software/spec-3.3/
