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
brew install nvm
nvm install node
nvm alias default node

# Install HTTPie
brew install httpie

# Install Sublime Text
brew cask install sublime-text

# Install Google Chrome
brew cask install google-chrome
