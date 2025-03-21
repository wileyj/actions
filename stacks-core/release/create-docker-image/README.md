# Create Docker Image action

Creates a docker image for the given tag and uploads it to dockerhub.

## Documentation

### Inputs

| Input                | Description                           | Required | Default |
| -------------------- | ------------------------------------- | -------- | ------- |
| `tag`                | Version tag of release                | `true`   | null    |
| `docker_tag`         | Version tag for docker images         | `true`   | null    |
| `DOCKERHUB_USERNAME` | Docker username for publishing images | `true`   | null    |
| `DOCKERHUB_PASSWORD` | Docker password for publishing images | `true`   | null    |
| `dist`               | Linux Distribution to build for       | `true`   | null    |
| `platforms`          | Docker platforms to build for         | `false`  | `linux/arm64, linux/arm/v7, linux/amd64, linux/amd64/v3` |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Docker Image
        id: docker_image
        uses: stacks-network/actions/stacks-core/release/docker-image@main
        with:
          tag: signer-3.0.0.0.1.0-rc1
          docker_tag: 3.0.0.0.1.0-rc1
          DOCKERHUB_USERNAME: ${{ inputs.DOCKERHUB_USERNAME }}
          DOCKERHUB_PASSWORD: ${{ inputs.DOCKERHUB_PASSWORD }}
```
