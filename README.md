# Stacks Network github actions

Monorepo of composite actions used in the stacks-network org

- [cleanup](./cleanup) - removes unused packages/dirs from a runner, freeing around 48GB of space on a runner
- [codecov](./cleanup) - Uploads codecov reports with a retry if it fails (optionally it can run grcov to generate a report to send)
- [openapi](./cleanup) - Generates and uploads an [OpenAPI](https://spec.openapis.org/oas/latest.html) artifact
- [docker](./docker) - Generic Docker setup workflows
- [stacks-blockchain/cache](./stacks-blockchain/cache/) - cache actions for the [stacks-blockchain](https://github.com/stacks-network/stacks-blockchain) repo
- [stacks-blockchain/testenv](./stacks-blockchain/testenv/) - Test envvironment actions for the [stacks-blockchain](https://github.com/stacks-network/stacks-blockchain) repo
