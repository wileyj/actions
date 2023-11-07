# Bitcoin Cache action

Generic cache operations for the bitcoin cache

- `check`: checks if the cache exists
- `restore`: restores the cache (if it passes the `check` step)
- `save`: Downloads the specified version of bitcoin and saves the cache

## Documentation

### Inputs

- `action` - Type of cache action - one of: `check`, `restore`, `save` (default: `check`)
- `cache-key` - _optional_ defaults to: `${{ github.event.repository.name }}-${{ github.sha }}-test-archive`
- `fail_ci_if_error` - _optional_ Fail the workflow on an error (default: `false`)
- `retries` - _optional_ Number of times to retry codecov upload (default: `3`)
- `retry-delay` - _optional_ Time in ms between upload retries (default: `10000`)
- `btc-version` - _optional_ The version of Bitcoin to use (default: `0.20.0`)

### Outputs

- `cache-hit` - _only applicable in the `check` action_ - returns a boolean if a cache is found

## Usage

### Check Cache

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Check Cache
        id: check_cache
        uses: wileyj/actions/stacks-blockchain/cache/test-archive@main
```

### Restore Cache

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Restore Cargo Cache
      id: restore_cache
      uses: wileyj/actions/stacks-blockchain/cache/test-archive@main
      with:
        action: restore
```

### Save Cache

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Save Cargo Cache
      id: save_cache
      uses: wileyj/actions/stacks-blockchain/cache/test-archive@main
      with:
        action: save
```
