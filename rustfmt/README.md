# Rustfmt action

Run `cargo fmt --all` and report all formatting differences in a nice overview.
It works best in combination with [`actions-rust-lang/setup-rust-toolchain`] for [problem matcher] highlighting.

## Documentation

### Inputs

All inputs are optional.
If a [toolchain file](https://rust-lang.github.io/rustup/overrides.html#the-toolchain-file) (i.e., `rust-toolchain` or `rust-toolchain.toml`) is found in the root of the repository, it takes precedence.
All input values are ignored if a toolchain file exists.

| Name            | Description                                                              | Default      |
| --------------- | ------------------------------------------------------------------------ | ------------ |
| `manifest-path` | Path to the `Cargo.toml` file, by default in the root of the repository. | `./Cargo.toml` |
| `alias`         | The alias for cargo fmt (set in `.cargo/config`)                         | `fmt` |

[`actions-rust-lang/setup-rust-toolchain`]: https://github.com/actions-rust-lang/setup-rust-toolchain
[problem matcher]: https://github.com/actions/toolkit/blob/main/docs/problem-matchers.md

## Usage

```yaml
name: "Test Suite"
on:
  push:
  pull_request:

jobs:
  formatting:
    name: cargo fmt
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@44c2b7a8a4ea60a981eaca3cf939b5f4305c123b # v4.1.5

      # Ensure rustfmt is installed and setup problem matcher
      - uses: actions-rust-lang/setup-rust-toolchain@b113a30d27a8e59c969077c0a0168cc13dab5ffc # v1.8.0
        with:
          components: rustfmt

      - name: Rustfmt Check
        uses: stacks-network/actions/rustfmt@main
```

