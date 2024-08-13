# Check Packages and Shards action

Checks whether to run mutants on [stackslib](https://github.com/stacks-network/stacks-core/tree/develop/stackslib), [stacks-node](https://github.com/stacks-network/stacks-core/tree/develop/testnet/stacks-node), [stacks-signer](https://github.com/stacks-network/stacks-core/tree/develop/stacks-signer), or small packages (all others), and whether to run them using strategy matrix or not.

## Documentation

### Inputs

| Input            | Description                                         | Required | Default |
| ---------------- | --------------------------------------------------- | -------- | ------- |
| `ignore_timeout` | Whether to ignore the mutants timeout limit or not. |   true   |    -    |

### Outputs
| Output | Description |
| ------------------------------- | ----------------------------------------------------- |
| `run_stackslib` | True if there are mutants on `stackslib` package, false otherwise.
| `stackslib_with_shards` | True if there are more than 7 mutants on `stackslib` package.
| `run_stacks_node` | True if there are mutants on `stacks-node` package, false otherwise.
| `stacks_node_with_shards` | True if there are more than 19 mutants on `stacks-node` package.
| `run_small_packages` | True if there are mutants on small packages, false otherwise.
| `small_packages_with_shards` | True if there are more than 79 mutants on small packages.
| `run_stacks_signer` | True if there are mutants on `stacks-signer` package.

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
