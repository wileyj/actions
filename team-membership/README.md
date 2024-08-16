# TeamMembership action

Check if the specified user belongs to a given team.

It emits one outputs which are available via the `steps` [output context](https://docs.github.com/en/actions/reference/context-and-expression-syntax-for-github-actions#steps-context)

## Documentation

### Inputs
| Input | Description | Required | Default |
| ------------------------------- | ----------------------------------------------------- | ------------------------- | ------------------------- |
| `organization` | Organization name | false | repo owner |
| `username` | Username to check team membership | true |  |
| `team` | Team to check the membership | true |  |

### Outputs
| Output | Description |
| ------------------------------- | ----------------------------------------------------- |
| `is_team_member` | A boolean indicating if a user belongs to a given team


## Usage

```yaml
name: Action
on: 
  pull_request:
  push:

jobs:
  check-right-permissions:
    name: Check Right Permissions To Trigger This
    runs-on: ubuntu-latest
    steps:
      - name: Check Right Permissions To Trigger This
        id: check_right_permissions
        uses: stacks-network/actions/stacks-core/team-membership@main
        with:
          username: ${{ github.actor }}
          team: 'Admin'

      - name: Fail if the user does not have the right permissions
        if: ${{ steps.check_right_permissions.outputs.is_team_member != 'true' }}
        run: exit 1

      - name: Proceed if the user has the right permissions
        if: ${{ steps.check_right_permissions.outputs.is_team_member == 'true' }}
        run: echo "User has the right permissions."
```
