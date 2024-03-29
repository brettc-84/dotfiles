# If not running interactively, don't do anything

[ -z "$PS1" ] && return

# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)

READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

# Make utilities available

PATH="$DOTFILES_DIR/bin:$PATH"

# Read cache

# DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"
# [ -f "$DOTFILES_CACHE" ] && . "$DOTFILES_CACHE"

# Finally we can source the dotfiles (order matters)

# TODO: Docker aliases
for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,path,env,alias,completion,grep,prompt,nvm,git_,custom,jenv}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

if is-macos; then
  for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias}.macos; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
  done
fi

# enable git completion
if is-macos; then
  [ -f /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash ] && . /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
fi

# Set LSCOLORS
eval "$(gdircolors "$DOTFILES_DIR"/system/.dir_colors)"

# Hook for extra/custom stuff

DOTFILES_EXTRA_DIR="$HOME/.extra"

# if [ -d "$DOTFILES_EXTRA_DIR" ]; then
#   for EXTRAFILE in "$DOTFILES_EXTRA_DIR"/runcom/*.sh; do
#     [ -f "$EXTRAFILE" ] && . "$EXTRAFILE"
#   done
# fi

# aws aliases
export AWS_PROFILE=adfs
ADFS_DIR="~/Work/b2b/b2b-devops-productivity/iam"
alias aws-connect="python3 $ADFS_DIR/adfs.py -p adfs -r eu-west-1 -c ~/.aws/credentials -k -s ssl.PROTOCOL_TLSv1 -n"


# Clean up

unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE EXTRAFILE

# Export

export DOTFILES_DIR DOTFILES_EXTRA_DIR
. "$HOME/.cargo/env"
