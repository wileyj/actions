# Create downstream PR

When a release branch is built, automatically open a PR against:

- `master`: a PR is opened against `master` using the release branch as the source.
- `develop`: a PR is opened against `develop`, using the release branch as the source.

If a PR already exists, or there are no changes between branches the action will exit successfully with no PR created.

## Documentation

## Usage

```yaml
permissions:
  pull-requests: write

jobs:
  create-pr:
    name: Create Downstream PR (${{ github.ref_name }})
    runs-on: ubuntu-latest
    steps:
      - name: Open Downstream PR
        id: create-pr
        uses: wileyj/actions/stacks-core/downstream-pr@main
        with:
          token: ${{ secrets.GH_TOKEN }}
```
