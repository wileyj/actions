# OpenAPI action

Generates an HTML artifact of a provided openapi.yml file using `redoc`, checks the result is valid and uploads the file as a workflow artifact.

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `input` | OpenAPI input file to use | true | null |
| `output` | OpenAPI artifact filename | false | `./open-api-docs.html` |

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: OpenAPI
        id: openapi
        uses: stacks-network/actions/openapi@main
        with:
          input: ./docs/rpc/openapi.yaml
```
