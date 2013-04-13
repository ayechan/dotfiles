" 標準のキーマップを変更
nnoremap <C-j> 4gj^
nnoremap <C-k> 4gk^
nnoremap gk k
nnoremap gj j
nnoremap k gk
nnoremap j gj
vnoremap < <gv
vnoremap > >gv
nnoremap n nzz
nnoremap N Nzz
nnoremap Y y$
nnoremap <silent> <C-l><C-l> :<C-u>nohlsearch<return><C-l>
cnoremap %% <C-R>=expand('%:p:h').'/'<return>
nnoremap <silent> <c-]> :ltag <c-r>=expand('<cword>')<return> <bar> lopen <return>$
cnoremap <C-p> <up>
cnoremap <C-n> <down>
nnoremap <space> za

" <C-w> でタブの操作をできるようにする
nnoremap <C-w><C-a> :<C-u>tabnew<return>
nnoremap <C-w><C-q> :<C-u>tabclose<return>
nnoremap <C-w><C-p> gT
nnoremap <C-w><C-n> gt
nnoremap <C-w>a :<C-u>tabnew<return>
nnoremap <C-w>q :<C-u>tabclose<return>
nnoremap <C-w>p gT
nnoremap <C-w>n gt

" リーダーキーから始まるショートカットを指定
noremap <Leader> ,
noremap <silent> <Leader><space> :<c-u>Unite file_mru -start-insert<return>
noremap <silent> <Leader>b :<c-u>Unite buffer -start-insert<return>
noremap <silent> <Leader>e :<c-u>Unite file_rec -start-insert<return>
noremap <Leader>\| :<C-u>set wrap!<return>
noremap <Leader>q :<C-u>qall<return>

