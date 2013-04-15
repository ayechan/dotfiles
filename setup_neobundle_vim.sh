#!/bin/bash

# This script initializes neobundle.vim

if ! type "git" >/dev/null 2>&1 ; then
  echo "This script needs git."
  exit 1;
fi

if [ ! -d $HOME/.vim/bundle/neobundle.vim ]; then
  echo "cloning NeoBundle.vim"
  mkdir -vp $HOME/.vim/bundle
  pushd $HOME/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim
  popd
fi

if [ -d $HOME/.vim/bundle/neobundle.vim ]; then
  vim -c "NeoBundleClean | quit"
  vim -c "NeoBundleInstall | quit"
  if [ -d $HOME/.vim/bundle/vimproc ]; then
    pushd $HOME/.vim/bundle/vimproc
    VIMPROC_MAK=""
    case "${OSTYPE}" in
      linux*) VIMPROC_MAK='make_unix.mak' ;;
      cygwin*) VIMPROC_MAK='make_cygwin.mak' ;;
      darwin*) VIMPROC_MAK='make_mac.mak' ;;
      *) VIMPROC_MAK='' ;;
    esac
    if [ ! -z $VIMPROC_MAK ]; then
      make -f $VIMPROC_MAK
    fi
    popd
  fi
  vim -c "NeoBundleUpdate | quit"
fi


