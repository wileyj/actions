# Bitcoin Cache action

Generic cache operations for the bitcoin cache:

- `check`: checks if the cache exists
- `restore`: restores the cache (if it passes the `check` step)
- `save`: Downloads the specified version of bitcoin and saves the cache

## Documentation

### Inputs

| Input              | Description                                               | Required | Default                                                                   |
| ------------------ | --------------------------------------------------------- | -------- | ------------------------------------------------------------------------- |
| `action`             | Type of cache action - one of: `check`, `restore`, `save` | true     | `check` |
| `cache-key`          | Cache Key name                                            | false    | `${{ github.event.repository.name }}-${{ github.event.pull_request.head.sha || github.sha }}-bitcoin-binaries`   |
| `fail-on-cache-miss` | Fail the workflow if the cache is not found               | false    | `true` |
| `btc-version`        | The version of Bitcoin to use                             | false    | `25.0` |

### Outputs

| Output      | Description                                                                           |
| ----------- | ------------------------------------------------------------------------------------- |
| `cache-hit` | Returns a boolean if a cache is found (_only applicable in the `check` input action_) |

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
        uses: stacks-network/actions/stacks-core/cache/bitcoin@main
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
        uses: stacks-network/actions/stacks-core/cache/bitcoin@main
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
        uses: stacks-network/actions/stacks-core/cache/bitcoin@main
        with:
          action: save
```
