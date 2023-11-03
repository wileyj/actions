# Cargo Cache action

Caches cargo artifacts (with grcov for code coverage)

## Documentation

### Inputs

- `action` - Type of cache action - one of: `check`, `restore`, `save` (default: `check`)
- `cache-key` - _optional_ defaults to: `${{ github.event.repository.name }}-${{ github.sha }}-test-archive`
- `fail_ci_if_error` - _optional_ Fail the workflow on an error (default: `false`)
- `retries` - _optional_ Number of times to retry codecov upload (default: `3`)
- `retry-delay` - _optional_ Time in ms between upload retries (default: `10000`)

### Outputs

- `cache-hit` - _only applicable in the `check` action_ - returns a boolean if a cache is found

## Usage

### Check Cache

```yaml
name: Action
on: push
jobs:
  foo:
    name: bar
    runs-on: ubuntu-latest
    steps:
      - name: Check Cache
        id: check_cache
        uses: stacks-network/actions/stacks-blockchain/cache/cargo@main
```

### Restore Cache

```yaml
name: Action
on: push
jobs:
  foo:
    name: bar
    runs-on: ubuntu-latest
    steps:
      - name: Restore Cache
      id: restore_cache
      uses: stacks-network/actions/stacks-blockchain/cache/cargo@main
      with:
        action: restore
```

### Save Cache

```yaml
name: Action
on: push
jobs:
  foo:
    name: bar
    runs-on: ubuntu-latest
    steps:
      - name: Save Cache
      id: save_cache
      uses: stacks-network/actions/stacks-blockchain/cache/cargo@main
      with:
        action: save
```
