"Store/Restore Window Size Position
let g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
  autocmd!
  autocmd VimLeavePre * call s:save_window()
  function! s:save_window()
    let options = [
      \ 'set columns=' . &columns,
      \ 'set lines=' . &lines,
      \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
      \ ]
    call writefile(options, g:save_window_file)
  endfunction
augroup END

if filereadable(g:save_window_file)
  execute 'source' g:save_window_file
endif

colorscheme jellybeans
set guioptions= 

if has('gui_macvim')
  set guifont=Ricty_for_Powerline:h16
  set guifontwide=Ricty:h16
endif

if has('win32') || has('win64')
  set guifont=Ricty_for_Powerline:h11
  set guifontwide=Ricty:h11
  if has('vim_starting')
    cd ~
  endif
endif

if has('multi_byte_ime')
  highlight CursorIM guifg=NONE guifg=Purple
endif

set visualbell t_vb=
