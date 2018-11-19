if ! is-macos -o; then
  echo "Skipped: Dock (Not MacOS)"
  return
fi

# Should not be analog
defaults write com.apple.menuextra.clock IsAnalog -int 0
# Dateformat should be dd MMM HH:mm
defaults write com.apple.menuextra.clock DateFormat -string "dd MMM HH:mm"

# Reset UI
killall SystemUIServer
