#!/bin/bash

sage_repo_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; cd .. ; pwd -P )
sage_docs_path=$sage_repo_path/docs
sage_bin_path=$sage_repo_path/bin

. $sage_bin_path/utils.sh

function add_token() {
  read -n 40 -p "Enter your 40 digit GitHub Personal Access Token (Ctrl+c to exit): " GH_TOKEN
  echo "//npm.pkg.github.com/:_authToken=${GH_TOKEN}" >> ~/.npmrc
}

# Check to see if we have an auth token for GitHub in the main npmrc
if grep -Fq "npm.pkg.github.com" ~/.npmrc; then
    echo_custom '[SETUP] Found GitHub authorization token in ~/.npmrc'
    echo_custom '[SETUP] Installing...'
    yarn setup
# Prompt for the token if not available
else
    echo_custom_error "No Personal Access Token for Github found in ~/.npmrc"
    echo_custom_error 'To create your PAT: https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token'
    add_token
fi
