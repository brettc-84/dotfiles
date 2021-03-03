if ! is-executable git; then
  echo "Skipped: node & npm (missing: git)"
  return
fi

export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# brew install nvm

# mkdir -p ~/.nvm

# #export DOTFILES_BREW_PREFIX_NVM=`brew --prefix nvm`
# #set-config "DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_CACHE"

# #. "${DOTFILES_DIR}/system/.nvm"

# export NVM_DIR="$HOME/.nvm"
# . "$(brew --prefix nvm)/nvm.sh"

nvm install --lts
nvm use node
nvm run node --version

npm config set strict-ssl false

# Globally install with npm

packages=(
  #electron
  nodemon
  npm
  nswag
)

npm install -g "${packages[@]}"
