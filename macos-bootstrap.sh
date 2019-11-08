#!/bin/bash

set -e

# Install XCode command line  tools
xcode-select --install

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install tools through Brew
brew install git pyenv nvm httpie jq starship

# Install apps through Cask
brew tap homebrew/cask-fonts
brew cask install font-fira-code google-chrome visual-studio-code

# Download and load .zprofile
curl -o ~/.zprofile https://raw.githubusercontent.com/frankie567/macos-bootstrap/master/.zprofile
source ~/.zprofile

# Download .inputrc
curl -o ~/.zshrc https://raw.githubusercontent.com/frankie567/macos-bootstrap/master/.zshrc

# Install and set default Python to 3.7.5
pyenv install 3.7.5
pyenv global 3.7.5

# Install and set default to latest Node
mkdir ~/.nvm
nvm install node
nvm alias default node

# Generate SSH key
ssh-keygen -t rsa -b 4096
