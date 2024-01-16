# Check Packages and Shards action

Checks whether to run mutants on big ([stackslib](https://github.com/stacks-network/stacks-core/tree/develop/stackslib)/[stacks-node](https://github.com/stacks-network/stacks-core/tree/develop/testnet/stacks-node)) or small packages (all others), and whether to run them using strategy matrix or not.

## Documentation

### Outputs
| Output | Description |
| ------------------------------- | ----------------------------------------------------- |
| `run_big_packages` | True if there are mutants on `stackslib` or `stacks-node` packages, false otherwise.
| `big_packages_with_shards` | True if there are more than 15 mutants on big packages.
| `run_small_packages` | True if there are mutants on small packages, false otherwise.
| `small_packages_with_shards` | True if there are more than 79 (119 if `big_packages_with_shards` is true) mutants on small packages.

## Usage

```yaml
name: Action
on: pull-request
jobs:
  check-packages-and-shards:
    name: Check Packages and Shards
    runs-on: ubuntu-latest
    steps:
      - name: Check Packages and Shards
        id: check_packages_and_shards
        uses: stacks-network/actions/stacks-core/mutation-testing/check-packages-and-shards@main
```
