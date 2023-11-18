# Bitcoin Cache action

Runs stacks-core tests using a [nextest](https://nexte.st) archive with a [partition](https://nexte.st/book/partitioning.html)

## Documentation

### Inputs
| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `partition` | Partition to run | `true`| null |
| `total-partitions` | Total number of partitions | `true` | null |
| `archive-file` | Archive file to use for tests | `true` | `/tmp/test_archive.tar.zst` |
| `threads` | Number of test threads | `false` | `num-cpus` |
| `success-output` | Success output | `false` | `immediate-final` |
| `status-level` | Output status level | `false` | `fail` |
| `retries` | Number of test retries | `false`| `2` |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    continue-on-error: true
    strategy:
      fail-fast: false
      matrix:
        partition: [1, 2, 3, 4, 5, 6, 7, 8] # 8 total partitions
    steps:
      - name: Run Tests
        id: run-tests
        timeout-minutes: 30
        uses: stacks-network/actions/stacks-core/run-tests/partition@main
        with:
          partition: ${{ matrix.partition }}
          total-partitions: 8 # total number of partitions in the matrix 
```

