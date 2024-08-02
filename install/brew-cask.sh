#!/bin/bash

# Install Caskroom
brew tap homebrew/cask
brew install brew-cask-completion
brew tap homebrew/cask-versions

# Install packages
apps=(
    java
    visual-studio-code
    sublime-text
#    dropbox
#    spectacle
#    webstorm
#    intellij-idea
   firefox
#    google-chrome
#    macdown - markdown editor
#    screenflow - screen editing and recording software
#    skype
#    slack
#    charles
    iterm2
#    vnc-viewer
    vlc
    beyond-compare
    powershell
#    whatsapp
#    docker
#    spotify
#    zoomus
)

for app in "${apps[@]}"
do
    brew list "$app" --cask || brew install "$app" --cask

done


# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
echo "\nInstalling Quick Look Plugins\n"
brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package --cask

exit 0
