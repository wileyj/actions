# Node Configuration Documentation Generator Action

Generates and uploads Stacks Core configuration documentation.

## Inputs

| Name | Description | Required | Default |
| ---- | ----------- | -------- | ------- |
| `artifact-name` | Name for the uploaded artifact | no | `node-parameters-bundle` |
| `output` | Output file for generated documentation | no | `./node-parameters.md` |
| `min-doc-size` | Minimum file size in bytes – build fails if below | no | `50000` |
| `rust-nightly-version` | Rust nightly toolchain version used to build the generator | no | `nightly-2025-06-17` |
| `retention-days` | Number of days to retain the artifact | no | `90` |

## Usage

```yaml
jobs:
  docs:
    runs-on: ubuntu-latest
    steps:
      - uses: stacks-network/actions/node-config-docsgen@main
```

### Custom example

```yaml
- uses: stacks-network/actions/node-config-docsgen@main
  with:
    artifact-name: "node-docs-${{ github.sha }}"
    min-doc-size: "75000"
```

## How it works

1. Runs `stacks-core/contrib/tools/config-docs-generator/generate-config-docs.sh`,
   exporting `PROJECT_ROOT`, `OUTPUT_FILE` (set from `output`).
2. The generator writes directly to the specified filename—no post-run rename required.
3. Validates size / structure, uploads the file as an artifact and appends a job summary.

## Related Tools

- **Source**: `stacks-core/contrib/tools/config-docs-generator/`
- **Shell Script**: `generate-config-docs.sh`
