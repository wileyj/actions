# Code Coverage action

- _optionally_ generate a code coverage file using `grcov`.
- Uploads a code coverage file with retries in case of failure.

## Documentation

### Inputs

- `test-name`- _required_ Test name that is being uploaded.
- `binary-path` - _optional_ Used when generating a report, it's the binary path used by grcov (default: `./target/debug/`)
- `verbose` - _optional_ Output verbosity when uploading a report
- `filename` - _optional_ Filename created by grcov and uploaded. (default: `/lcov.info`)
- `fail_ci_if_error` - _optional_ Fail the workflow on an error (default: `false`)
- `retries` - _optional_ Number of times to retry codecov upload (default: `3`)
- `retry-delay` - _optional_ Time in ms between upload retries (default: `10000`)
- `upload-only` - _optional_ Skips grcov step and uploads an existing file (default: `false`)

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
      - name: Code Coverage
        id: codecov
        uses: wileyj/actions/codecov@main
        with:
          test-name: sample_test
```

### Upload an existing code coverage file

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Code Coverage
        id: codecov
        uses: wileyj/actions/codecov@main
        with:
          upload-only: true
          test-name: sample_test
```
