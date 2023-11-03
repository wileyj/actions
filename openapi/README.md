# OpenAPI action

Generates an HTML artifact of a provided openapi.yml file using `redoc`, checks the result is valid and uploads the file as a workflow artifact.

## Documentation

### Inputs

- `input`- _required_ OpenAPI input file to use
- `output` - _optional_ Filename to save OpenAPI artifact as (default: `./open-api-docs.html`)

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
        uses: wileyj/actions/openapi@main
        with:
          input: ./docs/rpc/openapi.yaml
          output: ./open-api-docs.html
```
