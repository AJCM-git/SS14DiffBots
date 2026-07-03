# SS14DiffBots
Github applications to render SS14 maps and sprites diffs

# Install

# Contributing
Fork the repository and after cloning, either install the same dependencies as listed in the flake.nix yourself or:
1. Install and setup [direnv](https://direnv.net/docs/installation.html) and [nix](https://nixos.org/download/)
2. Run `direnv allow` in this repository
3. Enter and exit this repository so direnv can setup the nix development environment

Now that the environment is setup, follow along the guide in the [Github Documentation](https://docs.github.com/en/apps/creating-github-apps/writing-code-for-a-github-app/quickstart), have a look at the (Oktokit Reference)[https://octokitnet.readthedocs.io/en/latest/github-apps/] and:
1. Create a test app with "Repository/Pull Requests" permissions and subscribed to "Pull Request" events
2. Create and source a .env file with the following contents:
``` 
export APP_ID="YOUR_APP_ID"
export WEBHOOK_SECRET="YOUR_WEBHOOK_SECRET"
export PRIVATE_KEY_PATH="YOUR_PRIVATE_KEY_PATH"
```
3. Install your app on a test repository, its recommended to fork a SS14 codebase and use that for testing
