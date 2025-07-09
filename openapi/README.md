# OpenAPI action

Generates an HTML artifact of a provided openapi.yml file using `redoc`, checks the result is valid and uploads the file as a workflow artifact.

## Documentation

### Inputs

| Input             | Description                                           | Required | Default                |
| ----------------- | ----------------------------------------------------- | -------- | ---------------------- |
| `input`           | Input file to use to generate openAPI docs            | `true`   | `(none)`               |
| `output`          | The path for the generated openAPI output file        | `false`  | `./open-api-docs.html` |
| `validate`        | Validate OpenAPI spec before generating docs          | `false`  | `true`                 |
| `redocly-version` | The version of Redocly CLI to use (e.g. 1.34)         | `false`  | `latest`               |
| `config`          | Path to the Redocly config file for linting           | `false`  | `(none)`               |
| `node-version`    | Node.js version to use                                | `false`  | `22`                   |
| `retention-days`  | Number of days to retain the artifact                 | `false`  | `90`                   |

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
