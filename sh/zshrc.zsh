#!/bin/zsh

if [ -z "$PS1" ]; then return ; fi
echo "Loading .zshrc"

source $HOME/dotfiles/sh/env.sh
