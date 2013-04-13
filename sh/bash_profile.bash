#!/bin/bash

# インタラクティブシェルではないなら実行しない
if [ -z "$PS1" ]; then return ; fi

echo "Loading .bash_profile"

# tmux が使えるなら tmux を利用
#if true ; then
if type "tmux" >/dev/null 2>&1 && [ -z $TMUX ] ; then
  # セッションが残っているなら復元
  if [ -z `tmux ls` ] ; then
    exec tmux -2
  else
    exec tmux attach
  fi
else
  source $HOME/dotfiles/sh/env.sh
  # Load local file if exists
  if [ -f $HOME/.bash_profile.local ]; then
    source $HOME/.bash_profile.local
  fi
  if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
  fi
fi

