# Output PR Mutants action

Write the mutants tested in the previous jobs of the same workflow to github step summary.

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `big_packages` | True if there were big packages running | true |  |
| `shards_for_big_packages` | True if the big packages were running using matrix | true |  |
| `small_packages` | True if there were small packages running | true |  |
| `shards_for_small_packages` | True if the small packages were running using matrix | true |  |

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
        uses: stacks-network/actions/mutation-testing/output-pr-mutants@main
        with:
          big_packages: "true"
          shards_for_big_packages: "false"
          small_packages: "true"
          shards_for_small_packages: "true"
```
