#!/bin/bash

set -e

# Install XCode command line  tools
xcode-select --install

# macOS Mojave workaround to have headers in /include
# See https://stackoverflow.com/a/52900711/3864300
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Cask
brew tap caskroom/cask

# Download and load .bash_profile (enables Brew path)
curl -o ~/.bash_profile https://raw.githubusercontent.com/frankie567/macos-bootstrap/master/.bash_profile
source ~/.bash_profile

# Download .inputrc
curl -o ~/.inputrc https://raw.githubusercontent.com/frankie567/macos-bootstrap/master/.inputrc

# Install tools through Brew
brew install bash bash-completion git pyenv nvm httpie jq

# Install and set default Python to 3.7.1
pyenv install 3.7.1
pyenv global 3.7.1

# Install and set default to latest Node
nvm install node
nvm alias default node

# Install apps through Cask
brew cask install google-chrome visual-studio-code

# Generate SSH key
ssh-keygen -t rsa -b 4096
