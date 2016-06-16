#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.light.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Make tmux have 256 colours without -2
TERM=screen-256color

[[ -s "/home/beng/.gvm/scripts/gvm" ]] && source "/home/beng/.gvm/scripts/gvm"

# My functions

comms-deploy () {
  comms order $1 $2 prepare $3 && comms order $1 $2 install $3
}
