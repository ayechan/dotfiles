#!/bin/zsh

if [ -z "$PS1" ]; then return ; fi
echo "Loading .zshenv"
typeset -U path cdpath fpath manpath

source $HOME/dotfiles/sh/prompt.zsh
source $HOME/dotfiles/sh/settings.zsh
source $HOME/dotfiles/sh/keymappings.zsh
source $HOME/dotfiles/sh/aliases.sh
source $HOME/dotfiles/sh/loadvms.sh

if [ -e $HOME/.zshenv.local ]; then
  source $HOME/.zshenv.local
fi

