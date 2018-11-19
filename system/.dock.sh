if ! is-macos -o; then
  echo "Skipped: Dock (Not MacOS)"
  return
fi

# Tile size
defaults write com.apple.dock tilesize -integer 32
# Magnification size
defaults write com.apple.dock largesize -int 64
# Animation speed
defaults write com.apple.dock autohide-time-modifier -float 0.2
# Window effect
defaults write com.apple.dock mineffect -string suck

# Restart dock
killall Dock