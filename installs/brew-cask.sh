if ! is-macos -o ! is-executable brew; then
 echo "Skipped: Homebrew-Cask (missing brew or not MacOS)"
 return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  dash2
  # dbeaver-community
  gitkraken
  go2shell
  google-chrome
  postman
  vagrant
  visual-studio-code
  virtualbox
  vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo