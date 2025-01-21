# Check Release action

Checks whether the tag parsed as argument matches a stacks-node release, a stacks-signer release or no release at all, through regex patterns.

## Documentation

### Inputs
| Input | Description                                 | Required | Default |
| ----- | ------------------------------------------- | -------- | ------- |
| `tag` | The branch name against which the step runs | true     |         |

### Outputs
| Output              | Description                                                           |
| ------------------- | --------------------------------------------------------------------- |
| `node_tag`          | The node release tag, if there is one (empty otherwise).              |
| `node_docker_tag`   | The node release tag for docker, if there is one (empty otherwise).   |
| `signer_tag`        | The signer release tag, if there is one (empty otherwise).            |
| `signer_docker_tag` | The signer release tag for docker, if there is one (empty otherwise). |
| `is_node_release`   | True if the branch is a node release one, false otherwise.            |
| `is_signer_release` | True if the branch is a signer release one, false otherwise.          |

## Usage

```yaml
name: Action
on: pull-request
jobs:
  check-packages-and-shards:
    name: Check Release
    runs-on: ubuntu-latest
    steps:
      - name: Check Release
        id: check_release
        uses: stacks-network/actions/stacks-core/release/check-release@feat/release-signer-alongside-node
        with:
          tag: "release/2.5.0.0.5-rc6"
```
