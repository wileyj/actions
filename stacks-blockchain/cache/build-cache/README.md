# Build Nextest Archive Cache action

Builds the cache(s) of [nextest](https://nexte.st) archives for stacks-blockchain tests

## Documentation

### Inputs

- `genesis` - _optional_ Builds the [nextest](https://nexte.st) archive for genesis tests (default: `false`)

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Test Archives
        id: test-archives
        uses: stacks-network/actions/stacks-blockchain/cache/build-cache@main
        with:
          genesis: true
```
