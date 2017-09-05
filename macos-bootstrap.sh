#!/bin/bash

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Cask
brew tap caskroom/cask

# Download and load .bash_profile (enables Brew path)
curl -o ~/.bash_profile https://raw.githubusercontent.com/frankie567/macos-bootstrap/master/.bash_profile
source ~/.bash_profile

# Install recent Git
brew install git

# Install pyenv, install and set default Python to 3.6.2
brew install pyenv
pyenv install 3.6.2
pyenv global 3.6.2

# Install nvm, install and set default to latest Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install node
nvm alias default node

# Install HTTPie
brew install httpie

# Install Sublime Text
brew cask install sublime-text