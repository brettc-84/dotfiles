if ! is-macos -o ! is-executable brew; then
 echo "Skipped: Homebrew-Cask (missing brew or not MacOS)"
 return
fi

brew tap homebrew/core
brew tap homebrew/cask
brew tap homebrew/cask-fonts

# Install packages

apps=(
  #citrix-workspace
  #dash2
  #dbeaver-community
  docker
  #gimp
  #gitkraken
  go2shell
  google-chrome
  insomnia
  intellij-idea
  iterm2
  #java
  lastfm
  #minikube
  #postman
  #robo-3T
  #slack
  #vagrant
  visual-studio-code
  #virtualbox
)

brew install --cask "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo
