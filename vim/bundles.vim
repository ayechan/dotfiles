" プラグインを設定する
let g:neocomplcache_enable_at_startup = 1
let g:Powerline_symbols = 'fancy'
let g:indent_guides_auto_colors = 0   
let g:endwise_no_mappings = 1
let g:tagbar_iconchars = ['▾', '▸']
"let g:neobundle#log_filename = "~/.vim/neobundle.log"
let g:NERDTreeIgnore=['\.$', '\~$', '^\.svn$', '^\.git$', '^\.hg$', 'CVS', '^__pycache__$', '.pyc$', '.jar$', '.omc', '.class$']

let g:tagbar_type_scala = {}
let g:tagbar_type_scala.ctagstype = 'Scala'
let g:tagbar_type_scala.kinds = [
      \ 'p:packages:1',
      \ 'V:values',
      \ 'v:variables',
      \ 'T:types',
      \ 't:traits',
      \ 'o:objects',
      \ 'a:aclasses',
      \ 'c:classes',
      \ 'r:cclasses',
      \ 'm:methods'
      \ ]
let g:tagbar_type_scala.sro = '.'
let g:tagbar_type_scala.kind2scope = {
      \ 'T' : 'type',
      \ 't' : 'trait',
      \ 'o' : 'object',
      \ 'a' : 'abstract class',
      \ 'c' : 'class',
      \ 'r' : 'case class'
      \ }
let g:tagbar_type_scala.scope2kind = {
      \ 'type' : 'T',
      \ 'trait' : 't',
      \ 'object' : 'o',
      \ 'abstract class' : 'a',
      \ 'class' : 'c',
      \ 'case class' : 'r'
      \ }

let g:syntastic_mode_map = { 'mode' : 'active',
      \ 'active_filetypes' : [],
      \ 'passive_filetypes' : ['html'] }

" プラグインのロード
" Vim Utilities
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'rson/vim-conque'
NeoBundle 'akiomik/itermcolors-vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundleLazy 'kana/vim-vspec'

" Color Schemes
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'noahfrederick/Hemisu'

" Editing Utilities
NeoBundle 'glidenote/memolist.vim'

" Editing Supports
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'kana/vim-smartinput'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'benjifisher/matchit.zip'
NeoBundle 'miripiruni/CSScomb-for-Vim'

" Visual Guides
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundleLazy 'thinca/vim-fontzoom'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mikewest/vimroom'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tsukkee/unite-tag'
NeoBundleLazy 'kien/ctrlp.vim'

" Programming Supports
NeoBundle 'epmatsw/ag.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'a.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'thinca/vim-ref'
NeoBundle 'taka84u9/vim-ref-ri'
NeoBundle 'https://raw.github.com/m2ym/rsense/master/etc/rsense.vim', {'script_type' : 'plugin'}
NeoBundle 'skwp/vim-ruby-conque'
NeoBundle 'ecomba/vim-ruby-refactoring'
NeoBundleLazy 'joonty/vdebug'
NeoBundleLazy 'astashov/vim-ruby-debugger'
NeoBundleLazy 'tpope/vim-rails'

" Syntax files

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'skammer/vim-css-color'
NeoBundle 'lukaszb/vim-web-indent' "This works well for html-inlined javascripts.
NeoBundle 'jelera/vim-javascript-syntax' "This has many javascript terms.
NeoBundle 'pangloss/vim-javascript' "This makes js coloring neat.
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'groenewege/vim-less'
NeoBundle 'briancollins/vim-jst' " ejs or jst
NeoBundle 'vim-scripts/autohotkey-ahk'
NeoBundle 'jQuery'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'lunaru/vim-twig'
NeoBundle 'ocim/htmljinja.vim'
NeoBundle 'zaiste/tmux.vim'
NeoBundle 'rosstimson/scala-vim-support'
NeoBundle 'tpope/vim-cucumber'
NeoBundle 'tpope/vim-haml'

" Text-Objects

NeoBundle 'kana/vim-textobj-user'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'h1mesuke/textobj-wiw'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kana/vim-textobj-fold'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'kana/vim-textobj-syntax'
NeoBundle 'argtextobj.vim'

" Mapping leader shortcuts for plugins

nnoremap <Leader>r :<C-u>NERDTreeToggle <return>
nnoremap <Leader>t :<C-u>TagbarToggle <return>
vmap <Leader>, <Plug>NERDCommenterToggle
nmap <Leader>, <Plug>NERDCommenterToggle

" Powerline の設定
call Pl#Theme#InsertSegment('charcode', 'before', 'fileformat')
call Pl#Theme#InsertSegment('pwd', 'before', 'scrollpercent')
augroup cr2endwise
  autocmd!
  autocmd FileType lua,ruby,sh,zsh,vb,vbnet,aspvbs,vim imap <buffer> <CR> <CR><Plug>DiscretionaryEnd
augroup END

" NeoComplCache

"
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)


