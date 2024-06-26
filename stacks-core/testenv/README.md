# Stacks Blockchain Test Environment

- runs [cleanup](../cleanup/)
- restores caches used for tests (cargo, bitcoin, cargo target, [nextest](https://nexte.st) archive)
- optionally restores the genesis [nextest](https://nexte.st) archive cache

## Documentation

### Inputs

| Input     | Description                | Required | Default |
| --------- | -------------------------- | -------- | ------- |
| `genesis` | Restore genesis test cache | `true`   | false`  |

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
        uses: wileyj/actions/stacks-core/testenv@main
```
