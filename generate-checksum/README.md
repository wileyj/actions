# Generate Checksum action

Generates a 512-bit `sha` hash for each file downloaded from artifacts.

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `hashfile_name` | The name of the generated checksum file | false | "CHECKSUMS.txt" |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Generate Checksum
        id: generate_checksum
        uses: stacks-network/actions/generate-checksum@main
```
