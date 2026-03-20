# Code Coverage action

- Generates a code coverage file using `grcov`.
- Uploads a code coverage file to GitHub CI artifact storage for later use.

## Documentation

### Inputs
| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `test-name` | Test name that is being generated | true | null |
| `binary-path` | The binary path used by grcov | false | `./target/debug/` |

## Usage

### Generate and upload code coverage file

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Generate Code Coverage
        id: codecov
        uses: stacks-network/actions/codecov@main
        with:
          test-name: sample_test
```
