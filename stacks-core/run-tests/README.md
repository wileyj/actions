# Bitcoin Cache action

Runs stacks-core tests using a [nextest](https://nexte.st) archive and a specified test.

For running tests using a partition, [use this action ](./partition/) instead.

## Documentation

### Inputs

| Input            | Description                   | Required | Default                  |
| ---------------- | ----------------------------- | -------- | ------------------------ |
| `test-name`      | Test name to run              | `true`   | null                     |
| `archive-file`   | Archive file to use for tests | `true`   | `~/test_archive.tar.zst` |
| `threads`        | Number of test threads        | `false`  | `num-cpus`               |
| `success-output` | Success output                | `false`  | `immediate-final`        |
| `status-level`   | Output status level           | `false`  | `fail`                   |
| `retries`        | Number of test retries        | `false`  | `2`                      |

## Usage

### Integration Test

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Run Tests
        id: run_tests
        timeout-minutes: 30
        uses: stacks-network/actions/stacks-core/run-tests@main
        with:
          test-name: test::name
```

### Genesis Test

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Run Tests
        id: run_tests
        timeout-minutes: 30
        uses: stacks-network/actions/stacks-core/run-tests@main
        with:
          test-name: test::name
          threads: 1
          archive-file: ~/genesis_archive.tar.zst
```
