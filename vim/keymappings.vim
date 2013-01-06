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

" 括弧や引用符のペアを空で入力すると自動的にカーソルを内側に移動させる
"inoremap "" ""<left>
"inoremap '' ''<left>
"inoremap [] []<left>
"inoremap {} {}<left>
"inoremap () ()<left>

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
noremap <silent> <Leader><space> :<c-u>b#<return>
noremap <Leader>\| :<C-u>set wrap!<return>
noremap <Leader>= m`gg=G``
noremap <Leader>q :<C-u>qall<return>
noremap <Leader>a ggVG

