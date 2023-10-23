# Runner Cleanup action

_Modified version of [this action](https://github.com/easimon/maximize-build-space/)_

The main changes between the linked repo and this action is that this action does not create a logical volume or resize the swap space. Additionally, all package/image removal is by default set to `true` so it can be used very simply.
Before running this action, a runner will have `~18GB` of free disk. Afterwards, there will be `~48GB` free.

## Documentation

### Inputs

- `remove-dotnet` - Removes .NET runtime and libraries. (frees ~17 GB) (default: `true`)
- `remove-android`- Removes Android SDKs and Tools. (frees ~11 GB) (default: `true`)
- `remove-haskell` - Removes GHC (Haskell) artifacts. (frees ~2.7 GB) (default: `true`)
- `remove-codeql` - Removes CodeQL Action Bundles. (frees ~5.4 GB) (default: `true`)
- `remove-docker-images` - Removes cached Docker images. (frees ~3 GB) (default: `true`)

## Usage

```yaml
name: Action
on: push
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Cleanup Runner
        id: runner_cleanup
        uses: stacks-network/runner-cleanup@main
```
