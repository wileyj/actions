# Output PR Mutants action

Write the mutants tested in the previous jobs of the same workflow to github step summary.

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
```
