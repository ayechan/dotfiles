" 標準のキーマップを変更
nnoremap <c-j> 4gj^
nnoremap <c-k> 4gk^
nnoremap gk k
nnoremap gj j
nnoremap k gk
nnoremap j gj
vnoremap < <gv
vnoremap > >gv
nnoremap n nzz
nnoremap N Nzz
nnoremap Y y$
nnoremap <silent> <c-l><c-l> :<c-u>nohlsearch<return><c-l>
cnoremap %% <c-r>=expand('%:p:h').'/'<return>
nnoremap <silent> <c-]> :ltag <c-r>=expand('<cword>')<return> <bar> lopen <return>$
cnoremap <c-p> <up>
cnoremap <c-n> <down>
nnoremap <space> za

" <c-w> でタブの操作をできるようにする
nnoremap <c-w><c-a> :<c-u>tabnew<return>
nnoremap <c-w><c-q> :<c-u>tabclose<return>
nnoremap <c-w><c-p> gT
nnoremap <c-w><c-n> gt
nnoremap <c-w>a :<c-u>tabnew<return>
nnoremap <c-w>q :<c-u>tabclose<return>
nnoremap <c-w>p gT
nnoremap <c-w>n gt

" リーダーキーから始まるショートカットを指定
noremap <Leader> ,
noremap <silent> <Leader><space> :<c-u>Unite file_mru<return>
nmap <silent> <Leader>, <Plug>NERDCommenterToggle
vmap <silent> <Leader>, <Plug>NERDCommenterToggle
noremap <silent> <Leader>\| :<c-u>set wrap!<return>
noremap <silent> <Leader>/ :<c-u>Unite line<return>
noremap <silent> <Leader>] :<c-u>UniteWithCursorWord tag<return>
noremap <silent> <Leader>: :<c-u>Unite history/command<return>
noremap <silent> <Leader>b :<c-u>Unite buffer<return>
noremap <silent> <Leader>e :<c-u>Unite file_rec<return>
noremap <silent> <Leader>g :<c-u>Unite vimgrep<return>
noremap <silent> <Leader>h :<c-u>UniteWithInput help<return>
noremap <silent> <Leader>gg :<c-u>Unite grep<return>
noremap <silent> <Leader>o :<c-u>Unite outline<return>
noremap <silent> <Leader>p :<c-u>Unite register<return>
noremap <silent> <Leader>q :<c-u>qall<return>
noremap <silent> <Leader>r :<c-u>NERDTreeToggle <return>
noremap <silent> <Leader>t :<c-u>TagbarToggle <return>
noremap <silent> <Leader>u :<c-u>UniteResume<return>
