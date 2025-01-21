# Create Github Releases action

Creates github releases for the node and the signer.

## Documentation

### Inputs

| Input                | Description                    | Required | Default |
| -------------------- | ------------------------------ | -------- | ------- |
| `node_tag`           | Node Release Tag               | `true`   | null    |
| `node_docker_tag`    | Node Docker Release Tag        | `true`   | null    |
| `signer_tag`         | Signer Release Tag             | `true`   | null    |
| `signer_docker_tag`  | Signer Docker Release Tag      | `true`   | null    |
| `is_node_release`    | True if it is a node release   | `true`   | null    |
| `is_signer_release`  | True if it is a signer release | `true`   | null    |
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
        uses: stacks-network/actions/stacks-core/release/create-github-releases@feat/release-signer-alongside-node
        with:
          node_tag: 3.0.0.0.1-rc1
          node_docker_tag: 3.0.0.0.1-rc1
          signer_tag: signer-3.0.0.0.1.0-rc1
          signer_docker_tag: 3.0.0.0.1.0-rc1
          is_node_release: 'true'
          is_signer_release: 'true'
          GH_TOKEN: ${{ secrets.GH_TOKEN }}
```
