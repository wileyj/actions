# Lock Threads action

Uses [lock threads](https://github.com/dessant/lock-threads) action to lock closed PRs/Issues/Discussions after an amount of time has passed.
Refer to [https://github.com/dessant/lock-threads/blob/main/README.md#inputs](https://github.com/dessant/lock-threads/blob/main/README.md#inputs) for the full list of inputs available.

## Documentation

### Inputs

| Input                   | Description                                                         | Required | Default                                                                                                                                                    |
| ----------------------- | ------------------------------------------------------------------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `github-token`          | GitHub access token                                                 | true     |                                                                                                                                                            |
| `issue-inactive-days`   | Number of days of inactivity before a closed issue is locked        | false    | 30                                                                                                                                                         |
| `pr-inactive-days`      | Number of days of inactivity before a closed pull request is locked | false    | 30                                                                                                                                                         |
| `log-output`            | Log output parameters, value must be either `true` or `false`       | false    | false                                                                                                                                                      |
| `issue-comment`         | Comment to post before locking an issue                             | false    | This issue has been automatically locked since there has not been any recent activity after it was closed. Please open a new issue for related bugs.       |
| `pr-comment`            | Comment to post before locking a pull request                       | false    | This pull request has been automatically locked since there has not been any recent activity after it was closed Please open a new issue for related bugs. |
| `discussion-comment`    | Comment to post before locking a discussion                         | false    | This discussion has been automatically locked since there has not been any recent activity after it was closed.                                            |
| `add-issue-labels`      | Comma separated list of labels to add to closed issue               | false    | locked                                                                                                                                                     |
| `add-pr-labels`         | Comma separated list of labels to add to closed PR                  | false    | locked                                                                                                                                                     |
| `add-discussion-labels` | Comma separated list of labels to add to closed discussion          | false    | locked                                                                                                                                                     |
| `log-output`            | Log output parameters, value must be either true or false           | false    | true                                                                                                                                                       |

### Outputs

| Output        | Description                                                 |
| ------------- | ----------------------------------------------------------- |
| `issues`      | Issues that have been locked, value is a JSON string        |
| `prs`         | Pull requests that have been locked, value is a JSON string |
| `discussions` | Discussions that have been locked, value is a JSON string   |

## Usage

```yaml
name: Action
on:
  schedule:
    - cron: "0 0 * * *"
  workflow_dispatch:
jobs:
  build:
    name: Job
    runs-on: ubuntu-latest
    steps:
      - name: Lock Threads
        id: lock-threads
        uses: stacks-network/actions/lock-threads@main
        with:
          github-token`: ${{ secrets.GH_TOKEN }}
          pr-inactive-days: 7
          issue-inactive-days: 7
```
