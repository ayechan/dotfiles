#!/bin/zsh

if [ -z "$PS1" ]; then return ; fi
echo "Loading .zprofile"
typeset -U path cdpath fpath manpath

source $HOME/dotfiles/sh/env.sh
