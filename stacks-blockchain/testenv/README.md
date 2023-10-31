# Stacks Blockchain Test Environment

- runs [cleanup](../cleanup/)
- restores caches used for tests (cargo, bitcoin)
- optionally restores the genesis test cache

## Documentation

### Inputs

- `genesis` - Restore genesis test cache (boolean)

## Usage

### Tests

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
        uses: wileyj/actions/stacks-blockchain/testenv@main
```

### Genesis Tests

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
        uses: wileyj/actions/stacks-blockchain/testenv@main
        with:
          genesis: true
```
