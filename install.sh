#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
# DOTFILES_CACHE DOTFILES_EXTRA_DIR

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
# DOTFILES_EXTRA_DIR="$HOME/.extra"

# Make bin utilities available
PATH="$DOTFILES_DIR/bin:$PATH"

# Update dotfiles itself first

# if is-executable git -a -d "$DOTFILES_DIR/.git"; then git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master; fi

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/config/.editorconfig" ~

# Package managers & packages

. "$DOTFILES_DIR/installs/brew.sh"
. "$DOTFILES_DIR/installs/npm.sh"
. "$DOTFILES_DIR/installs/bash.sh"
. "$DOTFILES_DIR/installs/brew-cask.sh"
# . "$DOTFILES_DIR/installs/mas.sh"

# VSCode
. "$DOTFILES_DIR/vscode/setup.sh"

# My preferenes
. "$DOTFILES_DIR/preferences/dock.sh"
. "$DOTFILES_DIR/preferences/menubar.sh"
# Run tests

# if is-executable bats; then bats test/*.bats; else echo "Skipped: tests (missing: bats)"; fi

# Install extra stuff

# if [ -d "$DOTFILES_EXTRA_DIR" -a -f "$DOTFILES_EXTRA_DIR/install.sh" ]; then
#   . "$DOTFILES_EXTRA_DIR/install.sh"
# fi
