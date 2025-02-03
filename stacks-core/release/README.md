# Stacks Core release github actions

Folder of composite actions for the release process of [stacks blockchain](https://github.com/stacks-network/stacks-core), specifically tailored for the release of stacks core binaries and docker images. 

- [check-release](./check-release) - Check whether there is a `stacks-core`/`stacks-signer` release or not by regex matching the input tag against specific version schemas.
- [create-source-binary](./create-source-binary) - Create the `stacks-core` binaries used in the release process.
- [extract-signer-binary](./extract-signer-binary) - Extract the `stacks-signer` binary from the existing `stacks-core` binaries archive created in the [create-source-binary](./create-source-binary) action.
- [create-github-release](./create-github-release) - Create and upload a single github release containing either the `stacks-node` or the `stacks-signer` binary.
- [create-releases](./create-releases) - Check and create github releases for `stacks-node` and `stacks-signer` binaries (by calling the [create-github-release](./create-github-release) action).
- [create-docker-image](./create-docker-image) - Create and upload a single docker image containing either the `stacks-node` or the `stacks-signer` binary.
- [docker-images](./docker-images) - Check and create docker images for `stacks-node` and `stacks-signer` binaries (by calling the [create-docker-image](./create-docker-image) action).
