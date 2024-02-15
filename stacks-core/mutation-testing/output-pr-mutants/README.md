# Output PR Mutants action

Write the mutants tested in the previous jobs of the same workflow to github step summary.

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `stackslib_package` | True if there were mutants running on stackslib package | true |  |
| `shards_for_stackslib_package` | True if mutants on stackslib were running using matrix | true |  |
| `stacks_node_package` | True if there were mutants running on stacks-node package | true |  |
| `shards_for_stacks_node_package` | True if mutants on stacks-node were running using matrix | true |  |
| `small_packages` | True if there were mutants running on small packages | true |  |
| `shards_for_small_packages` | True if mutants on small packages were running using matrix | true |  |
| `stacks_signer` | True if there were mutants running on stacks-signer package | true |  |

## Usage

```yaml
name: Action
on: push
jobs:
  check-packages-and-shards:
    name: Output Mutants
    runs-on: ubuntu-latest
    steps:
      - name: Output Mutants
        id: output_pr_mutants
        uses: stacks-network/actions/stacks-core/mutation-testing/output-pr-mutants@main
        with:
          stackslib_package: "true"
          shards_for_stackslib_package: "false"
          stacks_node_package: "true"
          shards_for_stacks_node_package: "true"
          small_packages: "false"
          shards_for_small_packages: "false"
          stacks_signer: "true"
```
