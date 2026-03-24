# Stacks Blockchain Test Environment

- restores caches used for tests (cargo, bitcoin, cargo target, [nextest](https://nexte.st) archive)
- optionally restores the genesis [nextest](https://nexte.st) archive cache
- installs the Rust toolchain from the consuming repository's `rust-toolchain.toml` or `rust-toolchain` when present, otherwise falls back to the setup action's default toolchain resolution (which is `stable`).

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `genesis` | Restore genesis test cache | `true` | `false` |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Setup Test Environment
        id: setup_tests
        uses: stacks-network/actions/stacks-core/testenv@main
```
