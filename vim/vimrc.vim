" vi との互換性を無視
set nocompatible

" 設定の読み込み
source ~/dotfiles/vim/settings.vim

" mapleader を設定
let g:mapleader=","

 
" NeoBundle がインストールされているならプラグインをロードする
if isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
  filetype plugin indent off
  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif
  call neobundle#rc(expand('~/.vim/bundle/'))
  " プラグインの読み込み
  source ~/dotfiles/vim/bundles.vim
endif

filetype plugin indent on
colorscheme jellybeans
syntax on

" キー割り当ての読み込み
source ~/dotfiles/vim/keymappings.vim

" 自動コマンドの読み込み
source ~/dotfiles/vim/autocmds.vim

" ホームディレクトリに .vimrc.local が存在すればそれを読み込む
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
