# Docker Action

Generic docker setup

- runs [cleanup](../cleanup/)
- sets some basic env vars based on workflow trigger (i.e. PR)
- Sets up QEMU, buildx and logs into docker

## Documentation

### Inputs

- `username` - Docker repo login
- `password` - Docker repo password

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
