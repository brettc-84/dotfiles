if ! is-macos -o; then
  echo "Skipped: Menubar (Not MacOS)"
  return
fi

# Remove menu items
defaults write com.apple.systemuiserver dontAutoLoad -array \
 "/System/Library/CoreServices/Menu Extras/User.menu"

# Add menu items
defaults write com.apple.systemuiserver menuExtras -array \
#  "/System/Library/CoreServices/Menu Extras/Displays.menu" \
 "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
 "/System/Library/CoreServices/Menu Extras/Clock.menu" \
 "/System/Library/CoreServices/Menu Extras/Battery.menu" \
 "/System/Library/CoreServices/Menu Extras/AirPort.menu"

# Clock
# Should not be analog
defaults write com.apple.menuextra.clock IsAnalog -int 0
# Dateformat should be dd MMM HH:mm
defaults write com.apple.menuextra.clock DateFormat -string "dd MMM HH:mm"

# Reset UI
killall SystemUIServer
