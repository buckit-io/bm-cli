# Buckit Manager CLI

[![Go Report Card](https://goreportcard.com/badge/github.com/buckit-io/bm-cli)](https://goreportcard.com/report/github.com/buckit-io/bm-cli) [![license](https://img.shields.io/badge/license-AGPL%20V3-blue)](LICENSE)

`bm-cli` is the library component that implements the Buckit Manager CLI command set used by the [`bm`](https://github.com/buckit-io/bm) package.

> [!NOTE]
> This repository is forked from the original open source [MinIO Client](https://github.com/minio/mc)
> project and is maintained by Buckit project. See the LICENSE and NOTICE files for licensing and
> attribution information.

## Development

Verify this component builds with:

```sh
go build -tags kqueue ./...
```

Downstream `bm` packaging embeds this module by importing `github.com/buckit-io/bm-cli/cmd` and calling `cmd.Main(os.Args)` from its own `package main`.

## License

Use of this project is governed by the GNU AGPLv3 license in the [LICENSE](LICENSE) file.
