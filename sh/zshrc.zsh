#!/bin/zsh

if [ -z "$PS1" ]; then return ; fi
echo "Loading .zshrc"

source $HOME/dotfiles/sh/prompt.zsh
source $HOME/dotfiles/sh/settings.zsh
source $HOME/dotfiles/sh/keymappings.zsh
source $HOME/dotfiles/sh/aliases.sh
source $HOME/dotfiles/sh/aliases_s.zsh
source $HOME/dotfiles/sh/loadvms.sh

if [ -e $HOME/.zshrc.local ]; then
  source $HOME/.zshrc.local
fi

