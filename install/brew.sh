#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Add another homebrew resource
brew tap homebrew/core

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install the Homebrew packages I use on a day-to-day basis.
apps=(
    nvm
    maven
    git
    git-extras
    brew-cask-completion
    python
    source-highlight
    wget
    wifi-password
    jq
    watchman
    cocoapods
)

brew install "${apps[@]}"
# brew install yarn --without-node

# Remove outdated versions from the cellar
brew cleanup

# opt-out brew analytics
brew analytics off
