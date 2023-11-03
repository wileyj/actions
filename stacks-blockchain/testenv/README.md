# Stacks Blockchain Test Environment

- runs [cleanup](../cleanup/)
- restores caches used for tests (cargo, bitcoin, cargo target, nextest archive)
- optionally restores the genesis nextest archive cache

## Documentation

### Inputs

- `genesis` - _optional_ Restore genesis test cache (default: `false`)

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
        uses: stacks-network/actions/stacks-blockchain/testenv@main
```
