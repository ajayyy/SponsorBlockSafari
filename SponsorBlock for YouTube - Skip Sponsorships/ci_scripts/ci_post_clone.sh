#!/bin/sh

git submodule update

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew install node

cd ../../SponsorBlock

npm ci
npm run build:safari
