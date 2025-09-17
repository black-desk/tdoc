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

en | [zh_CN](README.zh_CN.md)

> [!WARNING]
>
> This English README is translated from the Chinese version using LLM and may
> contain errors.

My personal Typst document template.

## Usage

```bash
git clone https://github.com/black-desk/tdoc.git
cd tdoc
make install
```

```bash
typst init '@local/tdoc:0.1.0' my_doc
```

## License

Unless otherwise specified,
the code of this project is open source under the MIT License.

This project complies with the [REUSE specification].

You can use [reuse-tool](https://github.com/fsfe/reuse-tool) to generate the
SPDX list for this project:

```bash
reuse spdx
```

[REUSE specification]: https://reuse.software/spec-3.3/
