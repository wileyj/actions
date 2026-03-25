# Cargo Target Cache action

Caches cargo target artifacts

## Documentation

### Inputs

| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `action` | Type of cache action - one of: `check`, `restore`, `save` | true | `check` |
| `cache-key` | Cache Key name | false | `${{ github.event.repository.name }}-${{ github.sha || github.event.pull_request.head.sha }}-target` |
| `fail-on-cache-miss` | Fail the workflow on an error | false | `true` |

### Outputs

| Output | Description |
| ------------------------------- | ----------------------------------------------------- |
| `cache-hit` | Returns a boolean if a cache is found (_only applicable in the `check` input action_) |

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
        uses: stacks-network/actions/stacks-core/cache/target@main
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
        uses: stacks-network/actions/stacks-core/cache/target@main
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
        uses: stacks-network/actions/stacks-core/cache/target@main
        with:
          action: save
```
