# Create Source Binary action

Builds the binaries for the given architecture and uploads it to artifacts. In case of signer releases, it also uploads the standalone signer binary to artifacts.

## Documentation

### Inputs

| Input               | Description                  | Required | Default |
| ------------------- | ---------------------------- | -------- | ------- |
|        `arch`       | Binary's build architecture  | `true`   | null    |
|        `cpu`        | The target CPU               | `true`   | null    |
|      `node_tag`     | Node Release Tag             | `true`   | null    |
|     `signer_tag`    | Signer Release Tag           | `true`   | null    |
| `signer_docker_tag` | Signer Docker Release Tag    | `true`   | null    |
|  `is_node_release`  | True if it is a node release | `true`   | null    |

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
        uses: stacks-network/actions/stacks-core/release/create-source-binary@main
        with:
          arch: linux-glibc
          cpu: x86-64
          node_tag: 2.4.0.1.0-rc2
          signer_tag: signer-2.4.0.1.0-rc2
          signer_docker_tag: 2.4.0.1.0.0-rc2
          is_node_release: 'true'
```
