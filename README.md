# Stacks Network github actions

Monorepo of [composite actions](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) used in the [stacks-network](https://github.com/stacks-network) org

- [cleanup](./cleanup) - removes unused packages/dirs from a runner, freeing around 48GB of space on a runner
- [codecov](./cleanup) - Uploads codecov reports with a retry if it fails (optionally it can run grcov to generate a report to send)
- [openapi](./cleanup) - Generates and uploads an [OpenAPI](https://spec.openapis.org/oas/latest.html) artifact
- [docker](./docker) - Generic Docker setup workflows
- [stacks-core/cache](./stacks-core/cache/) - cache actions for the [stacks-core](https://github.com/stacks-network/stacks-core) repo
- [stacks-core/testenv](./stacks-core/testenv/) - Test environment actions for the [stacks-core](https://github.com/stacks-network/stacks-core) repo

## Why does this exist?

Quite simply: [**DRY**](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself).

1. Steps used across several workflows were basically all copy/pasted, requiring a search/replace when an update was needed (i.e. updating the version).
2. There was a specific issue with free disk space on a runner VM, and some steps were added to a workflow to address it - only to have the same issue reoccur in another workflow.
3. Repeatability and shareability - as more projects are added to the [stacks-network](https://github.com/stacks-network) org, they can all benefit from using commonly defined composite actions, as opposed to every repo doing it differently (maintenance moves from every repo to a single repo).

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)
