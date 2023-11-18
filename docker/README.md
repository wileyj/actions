# Docker Action

Generic docker setup

- runs [cleanup](../cleanup/)
- sets some basic env vars based on workflow trigger (i.e. PR)
- Sets up QEMU, buildx and logs into docker

## Documentation

### Inputs
| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `username` | Docker repo username | true | null |
| `password` | Docker repo password | true | null |

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
```
