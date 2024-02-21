# Create Source Binary action

Builds a binary for the given architecture and uploads it to artifacts.

## Documentation

### Inputs

| Input            | Description                   | Required | Default                  |
| ---------------- | ----------------------------- | -------- | ------------------------ |
| `arch`           | Binary's build architecture   | `true`   | null                     |
| `tag`            | The tag for the release       | `false`  | null                     |
| `cpu`            | The target CPU                | `true`   | null                     |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Build Binary
        id: build_binary
        uses: stacks-network/actions/stacks-core/create-source-binary@main
        with:
          arch: linux-glibc-x64
          tag: 2.4.0.1.0-rc2
          cpu: native
```
