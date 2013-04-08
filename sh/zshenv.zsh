#!/bin/zsh

if [ -z "$PS1" ]; then return ; fi
echo "Loading .zshenv"
typeset -U path cdpath fpath manpath

source $HOME/dotfiles/sh/env.sh
source $HOME/dotfiles/sh/loadvms.sh

if [ -e $HOME/.zshenv.local ]; then
  source $HOME/.zshenv.local
fi


