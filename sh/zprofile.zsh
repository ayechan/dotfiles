#!/bin/zsh

if [ -z "$PS1" ]; then return ; fi

echo "Loading .zprofile"

source $HOME/dotfiles/sh/env.sh
