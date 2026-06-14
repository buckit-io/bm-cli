### Setup your bm-cli repository

Fork [bm-cli](https://github.com/buckit-io/bm-cli/fork) and clone locally:

```
git clone https://github.com/$USER_ID/bm-cli
cd bm-cli
make
./mc --help
```

### Developer Guidelines

`mc` (bm-cli) welcomes your contribution. To make the process as seamless as possible, we ask for the following:

- `mc` is written in Go — read [Effective Go](https://golang.org/doc/effective_go.html)
- `mc` uses a [Contributor License Agreement](https://cla-assistant.io/buckit-io/bm-cli) — please sign before submitting PRs
- Run `make verifiers` before submitting a pull request
