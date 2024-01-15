# PR Differences Mutants action

Run mutants for differences in pull requests, and upload the mutant outcomes and exit codes to artifacts.

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `shard` | The number of the shard to run (`-1` if ran without shards) | false | -1 |
| `package-dimension` | The dimension of the package. `big` for [stacks-node](https://github.com/stacks-network/stacks-core/tree/develop/testnet/stacks-node) and [stackslib](https://github.com/stacks-network/stacks-core/tree/develop/stackslib), `small` for others | true |  |

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
        uses: stacks-network/actions/mutation-testing/pr-differences@main
        with:
          package-dimension: "big"
```
