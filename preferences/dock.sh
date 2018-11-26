if ! is-macos -o; then
  echo "Skipped: Dock (Not MacOS)"
  return
fi

# Tile size
defaults write com.apple.dock tilesize -int 32
# Enable magnification
defaults write com.apple.dock magnification -bool TRUE
# Magnification size
defaults write com.apple.dock largesize -int 64
# Animation speed
defaults write com.apple.dock autohide-time-modifier -float 0
# Window effect
defaults write com.apple.dock mineffect -string suck
# Show hidden apps as transparent tiles
defaults write com.apple.dock showhidden -bool TRUE
# Minimise window to app icon
defaults write com.apple.dock minimize-to-application -int 1

# Restart dock
killall Dock

# resets to default settings
# defaults delete com.apple.dock; killall Dock
