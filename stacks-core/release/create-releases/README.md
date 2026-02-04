# Create Releases action

Creates releases for the node and the signer.

## Documentation

### Inputs

| Input                | Description                    | Required | Default |
| -------------------- | ------------------------------ | -------- | ------- |
| `node_tag`           | Node Release Tag               | `true`   | null    |
| `signer_tag`         | Signer Release Tag             | `true`   | null    |
| `GH_TOKEN`           | GitHub Token                   | `true`   | null    |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Create Github Releases
        id: create_github_releases
        uses: stacks-network/actions/stacks-core/release/create-releases@main
        with:
          node_tag: 3.0.0.0.1-rc1
          signer_tag: signer-3.0.0.0.1.0-rc1
          GH_TOKEN: ${{ secrets.GH_TOKEN }}
```
