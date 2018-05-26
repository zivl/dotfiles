#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    java
    visual-studio-code
    sublime-text
    dropbox
    spectacle
    webstorm
    intellij-idea
    firefox
    google-chrome
#    macdown - markdown editor
#    screenflow - screen editing and recording software
    skype
    slack
    charles
    iterm2
    vnc-viewer
    vlc
    beyond-compare
    powershell
)

for app in "${apps[@]}"
do
    brew cask list "$app" || brew cask install "$app"

done


# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
echo "\nInstalling Quick Look Plugins\n"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package

exit 0
