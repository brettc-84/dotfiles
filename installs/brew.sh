ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  bash-completion2
  coreutils
  dockutil
  elixir
  # fasd
  # grep --with-default-names
  jq
  # mackup
  # mas
  # postgresql
  # psgrep
  shellcheck
  unar
  wget
  # kubectl
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
#set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

#ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
``