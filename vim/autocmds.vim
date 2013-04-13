function! s:RestoreCursor()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

function! s:CloseUniteBufferOnEsc()
  nmap <buffer> <ESC> <Plug>(unite_exit)
  imap <buffer> <ESC> <Plug>(unite_exit)
endfunction

augroup vimrc_quickfx
  autocmd!
  autocmd QuickFixCmdPost [^l]* nested cwindow
  autocmd QuickFixCmdPost l* nested lwindow
  autocmd FileType qf setlocal nowrap
augroup END


" ファイルを開いた時に、以前のカーソル位置を復元する
augroup vimrc_restore_cursor
  autocmd!
  autocmd BufWinEnter * call s:RestoreCursor()
augroup END

" アクティブウィンドウに限りカーソル行(列)を強調する
augroup vimrc_show_hide_cursor_line
  autocmd!
  autocmd VimEnter,BufWinEnter,WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

" インサートモードに入った時にカーソル行(列)の色を変更する
augroup vimrc_change_cursorline_color
  autocmd!
  autocmd InsertEnter * highlight CursorLine ctermbg=24 guibg=#005f87 | highlight CursorColumn ctermbg=24 guibg=#005f87
  autocmd InsertLeave * highlight CursorLine ctermbg=236 guibg=#303030 | highlight CursorColumn ctermbg=236 guibg=#303030
augroup END

" 拡張子の関連づけ
augroup vimrc_associate_extensions_to_filetypes
  autocmd!
  autocmd BufRead *.php.cache setfiletype php
  autocmd BufRead,BufNewFile *.twig set syntax=htmljinja
  autocmd BufRead,BufNewFile *.tmux set syntax=tmux
  autocmd BufRead,BufNewFile *.scss set syntax=scss
  autocmd BufRead,BufNewFile *.coffee set syntax=coffee
augroup END

" シンタックス毎の設定
augroup vimrc_syntax
  autocmd!
  " Change key mappings
  autocmd FileType unite call s:CloseUniteBufferOnEsc()
  " Change tab settings
  autocmd FileType ruby :setlocal tags+=gems.tags
  autocmd FileType php :set tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType python :set tabstop=4 softtabstop=4 shiftwidth=4
  " Omnifuncs
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END


