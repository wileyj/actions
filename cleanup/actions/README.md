# Github Actions Workflow Cleanup action

Deletes the following Github Action workflow artifacts after a specified time period (in days):
- caches
- workflows
- failed workflows


## Documentation

### Inputs

- `cache-ttl` - - Number of days to retain caches (default: `7`)
- `workflow-ttl` - Number of days to retain successful workflows (default: `30`)
- `failed-workflow-ttl` - Number of days to retain successful workflows (default: `15`)

## Usage

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
        uses: stacks-network/actions/cleanup/actions@main 
        with:
          token: ${{ secrets.GH_TOKEN }}
```
