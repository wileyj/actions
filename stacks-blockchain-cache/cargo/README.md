# Cargo Cache action

## Documentation

### Inputs

- `action` - type of cache action (one of: `check`, `restore`, `save`)
- `cache-key` - _optional_ defaults to: `${{ github.event.repository.name }}-${{ github.sha }}-test-archive`

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
        uses: wileyj/actions/stacks-blockchain-cache/cargo@main
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
      uses: wileyj/actions/stacks-blockchain-cache/cargo@main
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
      uses: wileyj/actions/stacks-blockchain-cache/cargo@main
      with:
        action: save
```
