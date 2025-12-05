# Create Github Release action

Creates a github release for the given tag.

## Documentation

### Inputs

| Input        | Description        | Required | Default |
| ------------ | ------------------ | -------- | ------- |
| `tag`        | Release Tag        | `true`   | null    |
| `GH_TOKEN`   | GitHub Token       | `true`   | null    |
| `release_type`   | Release type (one of: stacks-core or stacks-signer) | `true`   | null    |

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
          GH_TOKEN: ${{ inputs.GH_TOKEN }}
          release_type: stacks-signer
```
