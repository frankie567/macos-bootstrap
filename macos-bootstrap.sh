#!/bin/bash

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Download .bash_profile (enables Brew path)
curl -o ~/.bash_profile https://raw.githubusercontent.com/frankie567/macos-bootstrap/master/.bash_profile

# Install recent Git
brew install git

# Install pyenv, install and set default Python to 3.6.2
brew install pyenv
pyenv install 3.6.2
pyenv global 3.6.2

# Install nvm, install and set default to latest Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
nvm install node
nvm alias default node

# Install HTTPie
brew install httpie

# Install Sublime Text (download, mount DMG, copy app, unmount and remove DMG)
http --download --output sublimetext.dmg https://download.sublimetext.com/Sublime%20Text%20Build%203126.dmg 
hdiutil attach sublimetext.dmg
cp -r /Volumes/Sublime\ Text/Sublime\ Text.app/ /Applications/
hdiutil detach /Volumes/Sublime\ Text/
rm sublimetext.dmg
