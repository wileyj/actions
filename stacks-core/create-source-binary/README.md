# Create Source Binary action

Builds a binary for the given architecture and uploads it to artifacts.

## Documentation

### Inputs

| Input            | Description                   | Required | Default                  |
| ---------------- | ----------------------------- | -------- | ------------------------ |
| `arch`           | Binary's build architecture   | `true`   | null                     |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    strategy:
      max-parallel: 10
      matrix:
        platform: ${{ fromJson(inputs.arch) }}
    steps:
      - name: Build Binary
        id: build_binary
        timeout-minutes: 30
        uses: stacks-network/actions/stacks-core/create-source-binary@main
        with:
          arch: ${{ matrix.platform }}
```
