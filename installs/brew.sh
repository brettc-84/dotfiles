/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# brew tap Goles/battery
brew analytics off
brew update
brew upgrade

# Install packages

apps=(
  awscli
  bash-completion2
  coreutils
  dockutil
  #elixir
  # fasd
  # grep --with-default-names
  java
  jenv
  jq
  #kubernetes-helm
  maven
  # mackup
  # mas
  # postgresql
  # psgrep
  shellcheck
  tree
  unar
  wget
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
#set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

#ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
``
