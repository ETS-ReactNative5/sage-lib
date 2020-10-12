# SETUP

1. Clone this repo: `git clone git@github.com:Kajabi/sage-lib.git`
1. `cp .env-sample .env`
1. Create a Personal Access Token: https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token
1. Update `.env` file with Access token from above.
1. `yarn global add dotenv`
1. `cd .. && cd sage-lib` or the directory name you cloned as. This will then prompt you to utilize the .env file in the repository
1. `yarn setup`
1. `yarn start`