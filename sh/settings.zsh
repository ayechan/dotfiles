#!/bin/zsh
#
typeset -U path cdpath fpath manpath

setopt auto_cd
setopt auto_list
setopt auto_menu
setopt auto_param_keys
setopt auto_param_slash
setopt auto_pushd
setopt correct
setopt glob_dots
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_functions
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_verify
setopt ignore_eof
setopt inc_append_history
setopt list_packed
setopt list_types
setopt long_list_jobs
setopt mark_dirs
setopt menu_complete
setopt noautoremoveslash
setopt nobeep
setopt noflowcontrol
setopt nohistbeep
setopt nolistbeep
setopt numeric_glob_sort
setopt print_eight_bit
setopt pushd_ignore_dups
setopt share_history
# For compatibility with rvm
setopt nullglob
setopt noclobber
unsetopt auto_name_dirs

HISTFILE=$HOME/.histfile
HISTSIZE=10000
SAVEHIST=10000
WORDCHARS=
