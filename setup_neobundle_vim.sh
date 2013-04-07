#!/bin/bash

# This script initializes neobundle.vom

if [ -d $HOME/.vim/bundle/neobundle.vim ]; then
  echo "NeoBundle.vim exists already."
elif type "git" >/dev/null 2>&1 ; then
  mkdir -vp $HOME/.vim/bundle
  pushd $HOME/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim
  popd
else
  echo "This script needs git."
  exit 1;
fi
