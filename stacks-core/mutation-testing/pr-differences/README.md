# PR Differences Mutants action

Run mutants for differences in pull requests, and upload the mutant outcomes and exit codes to artifacts.

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `shard` | The number of the shard to run (`-1` if ran without shards) | false | -1 |
| `package` | The package to run mutants on. [Stackslib](https://github.com/stacks-network/stacks-core/tree/develop/stackslib), [stacks-node](https://github.com/stacks-network/stacks-core/tree/develop/testnet/stacks-node) and [stacks-signer](https://github.com/stacks-network/stacks-core/tree/develop/stacks-signer) are independent, all others are run as `small`. | true |  |

## Usage

```yaml
name: Action
on: pull_request
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: PR Differences Mutants
        id: pr-differences-mutants
        uses: stacks-network/actions/stacks-core/mutation-testing/pr-differences@main
        with:
          package-dimension: "small"
```
