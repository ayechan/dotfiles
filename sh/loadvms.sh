#!/bin/sh

if [ -z "$PS1" ]; then return ; fi
export PATH

function rvm() {
  unset -f rvm
  echo "loading rvm ..."
  source "$HOME/.rvm/scripts/rvm"
  rvm $*
}

function nvm() {
  export NVM_DIR=$HOME/.nvm
  unset -f nvm
  echo "loading nvm ..."
  source "$HOME/.nvm/nvm.sh"
  nvm $*
}
