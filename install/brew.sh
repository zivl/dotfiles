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

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install the Homebrew packages I use on a day-to-day basis.
#
# - Languages: nvm (Node.js)
# - Tree (http://mama.indstate.edu/users/ice/tree/): A directory listing utility
#   that produces a depth indented listing of files.
# - git-extras (https://vimeo.com/45506445): Adds a shit ton of useful commands #   to git.


apps=(
    nvm
    maven
    git
    git-extras
    homebrew/completions/brew-cask-completion
    python
    source-highlight
    tree
    wget
    wifi-password
    jq
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
