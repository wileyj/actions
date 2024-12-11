# Create Docker Images action

Creates docker images for the node and the signer.

## Documentation

### Inputs

| Input                | Description                           | Required | Default |
| -------------------- | ------------------------------------- | -------- | ------- |
| `node_tag`           | Node Release Tag                      | `true`   | null    |
| `node_docker_tag`    | Node Docker Release Tag               | `true`   | null    |
| `signer_tag`         | Signer Release Tag                    | `true`   | null    |
| `signer_docker_tag`  | Signer Docker Release Tag             | `true`   | null    |
| `is_node_release`    | True if it is a node release          | `true`   | null    |
| `is_signer_release`  | True if it is a signer release        | `true`   | null    |
| `DOCKERHUB_USERNAME` | Docker username for publishing images | `true`   | null    |
| `DOCKERHUB_PASSWORD` | Docker password for publishing images | `true`   | null    |
| `dist`               | Linux Distribution to build for       | `true`   | null    |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Create Docker Images
        id: create_docker_images
        uses: stacks-network/actions/stacks-core/release/create-docker-images@main
        with:
          node_tag: 3.0.0.0.1-rc1
          node_docker_tag: 3.0.0.0.1-rc1
          signer_tag: signer-3.0.0.0.1.0-rc1
          signer_docker_tag: 3.0.0.0.1.0-rc1
          is_node_release: 'true'
          is_signer_release: 'true'
          DOCKERHUB_USERNAME: ${{ secrets.DOCKERHUB_USERNAME }}
          DOCKERHUB_PASSWORD: ${{ secrets.DOCKERHUB_PASSWORD }}
```
