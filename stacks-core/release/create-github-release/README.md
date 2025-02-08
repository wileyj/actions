# Create Github Release action

Creates a github release for the given tag.

## Documentation

### Inputs

| Input        | Description        | Required | Default |
| ------------ | ------------------ | -------- | ------- |
| `tag`        | Release Tag        | `true`   | null    |
| `docker_tag` | Release Docker Tag | `true`   | null    |
| `GH_TOKEN`   | GitHub Token       | `true`   | null    |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Create Release
        id: create_release
        uses: stacks-network/actions/stacks-core/release/create-release@main
        with:
          tag: signer-3.0.0.0.1.0-rc1
          docker_tag: 3.0.0.0.1.0-rc1
          GH_TOKEN: ${{ inputs.GH_TOKEN }}
```
