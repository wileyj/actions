# Github Actions Workflow Cleanup action

Deletes the following Github Action workflow artifacts after a specified time period (in days):
- caches
- workflows
- failed workflows


## Documentation

### Inputs

- `cache-ttl` - Number of days to retain caches (default: `7`)
- `workflow-ttl` - Number of days to retain successful workflows (default: `30`)
- `failed-workflow-ttl` - Number of days to retain successful workflows (default: `15`)

## Usage

### workflow_dispatch

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Cleanup Workflows
        id: workflow_cleanup
        uses: stacks-network/actions/cleanup/workflows@main 
        with:
          token: ${{ secrets.GH_TOKEN }}
```

### schedule
When running via a schedule, the inputs need to be provided via env var

```yaml
name: Workflow Cleanup
on:
  schedule:
    ## Run every day at 00:00:00
    - cron: "0 0 ** *"
env:
  CACHE_TTL: 7
  WORKFLOW_TTL: 30
  FAILED_WORKFLOW_TTL: 15

jobs:
  workflow-cleanup:
    name: Workflow Cleanup
    runs-on: ubuntu-latest
    steps:
      - name: Cleanup Workflows
        id: workflow_cleanup
        uses: stacks-network/actions/cleanup/workflows@main  
        with:
          token: ${{ secrets.GH_TOKEN }}
          cache-ttl: ${{ inputs.cache-ttl || env.CACHE_TTL}}
          workflow-ttl: ${{ inputs.workflow-ttl || env.WORKFLOW_TTL}}
          failed-workflow-ttl: ${{ inputs.failed-workflow-ttl || env.FAILED_WORKFLOW_TTL }}
```