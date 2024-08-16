import { getInput, setOutput } from '@actions/core';
import { getOctokit, context } from '@actions/github';

const GITHUB_API_VERSION = '2022-11-28';

async function run() {
  try {
    const token = getInput('GITHUB_TOKEN', { required: true });
    const api = getOctokit(token);

    const organization = getInput('organization') || context.repo.owner;
    const username = getInput('username', { required: true });
    const team = getInput('team', { required: true });

    console.log(`Will check if ${username}@${organization} belongs to ${team}`);

    const response = await api.request('GET /orgs/{org}/teams/{team}/memberships/{username}', {
      org: organization,
      team: team,
      username: username,
      headers: {
        'X-GitHub-Api-Version': GITHUB_API_VERSION,
      },
    });

    console.log('API Response:', response.data);

    const isTeamMember = response.data?.state === 'active';
    console.log(`Is the user an active team member? ${isTeamMember}`);

    setOutput('is_team_member', isTeamMember);
  } catch (error) {
    setOutput('is_team_member', false);
  }
}

run();
