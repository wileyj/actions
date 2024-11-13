# Extract Signer Binary action

Extracts the signer binary for the given architecture from the existing archives, then uploads it to artifacts.

## Documentation

### Inputs

|    Input     |               Description              | Required | Default |
| ------------ | -------------------------------------- | -------- | ------- |
|    `arch`    | Binary's build architecture            |  `true`  |   null  |
|    `cpu`     | The target CPU                         |  `true`  |   null  |
| `signer_tag` | The artifact pattern of the node cache |  `true`  |   null  |
|  `node_tag`  | Signer release tag                     |  `true`  |   null  |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Extract Signer Binary
        id: extract_signer_binary
        uses: stacks-network/actions/stacks-core/release/extract-signer-binary@main
        with:
          arch: linux-glibc
          cpu: x86-64
          signer_tag: 3.0.0.0.1.0-rc1
          node_tag: 3.0.0.0.1-rc1
```
