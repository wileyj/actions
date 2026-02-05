# Docker Action

Generic docker setup

- sets some basic env vars based on workflow trigger (i.e. PR)
- Sets up QEMU, buildx and logs into docker

## Documentation

### Inputs
| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `username` | Docker repo username | true | null |
| `password` | Docker repo password | true | null |
| `registry` | Docker registry | false | docker.io |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Docker setup
        uses: stacks-network/actions/docker@main
        with:
          username: ${{ secrets.DOCKERHUB_USERNAME }}
          password: ${{ secrets.DOCKERHUB_PASSWORD }}
          registry: "ghcr.io"
```
