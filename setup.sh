#!/bin/bash

# if this script is not placed on '~/dotfiles', create a link from there to here.

pushd `dirname $0` > /dev/null
HERE=`pwd`
popd > /dev/null

DOTFILES=$HOME/dotfiles

if [ $DOTFILES != $HERE ]; then
  if [ ! -d $DOTFILES ]; then
    ln -f -v -s $HERE $DOTFILES
  fi
fi

# Make files available

ln -f -v -s $DOTFILES/vim/vimrc.vim $HOME/.vimrc 
ln -f -v -s $DOTFILES/vim/gvimrc.vim $HOME/.gvimrc 
ln -f -v -s $DOTFILES/sh/zshrc.zsh $HOME/.zshrc 
ln -f -v -s $DOTFILES/sh/zshenv.zsh $HOME/.zshenv 
ln -f -v -s $DOTFILES/tmux/conf.tmux $HOME/.tmux.conf 
ln -f -v -s $DOTFILES/sh/bash_profile.bash $HOME/.bash_profile
ln -f -v -s $DOTFILES/sh/bashrc.bash $HOME/.bashrc
ln -f -v -s $DOTFILES/rcfiles/.pryrc $HOME/.pryrc
ln -f -v -s $DOTFILES/rcfiles/.ctags $HOME/.ctags
ln -f -v -s $DOTFILES/rcfiles/.rspec $HOME/.rspec
ln -f -v -s $DOTFILES/rcfiles/.inputrc $HOME/.inputrc

echo "If you would like to have local settings, put them to ~/.zshenv.local or ~/.bashrc.local"
