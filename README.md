# Stacks Network GitHub Actions

Monorepo of [composite actions](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) used in the [stacks-network](https://github.com/stacks-network) org

- [codecov](./codecov) - Generates code coverage reports and uploads them to GitHub artifacts to be used later in the CI pipeline
- [openapi](./openapi) - Generates and uploads an [OpenAPI](https://spec.openapis.org/oas/latest.html) artifact
- [docker](./docker) - Generic Docker setup workflows
- [generate-checksum](./generate-checksum/) - Generate a 512-bit `sha` hash of the uploaded artifacts
- [check-jobs-status](./check-jobs-status/) - Check the result of every job parsed as input. Only succeeds if none of the given jobs have failed.
- [rustfmt](./rustfmt) - Run rustfmt for the given codebase
- [stacks-core](./stacks-core/) - actions for the [stacks-core](https://github.com/stacks-network/stacks-core) repo

## Why does this exist?

Quite simply: [**DRY**](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself).

1. Steps used across several workflows were basically all copy/pasted, requiring a search/replace when an update was needed (i.e. updating the version).
2. There was a specific issue with free disk space on a runner VM, and some steps were added to a workflow to address it - only to have the same issue reoccur in another workflow.
3. Repeatability and shareability - as more projects are added to the [stacks-network](https://github.com/stacks-network) org, they can all benefit from using commonly defined composite actions, as opposed to every repo doing it differently (maintenance moves from every repo to a single repo).

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)
