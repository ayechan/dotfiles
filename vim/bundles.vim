" プラグインを設定する {{{
" 
let g:neocomplcache_enable_at_startup = 1
let g:Powerline_symbols = 'fancy'
let g:indent_guides_auto_colors = 0   
let g:endwise_no_mappings = 1
let g:tagbar_iconchars = ['▾', '▸']
"let g:neobundle#log_filename = "~/.vim/neobundle.log"
let g:NERDTreeIgnore=['\.$', '\~$', '^\.svn$', '^\.git$', '^\.hg$', 'CVS', '^__pycache__$', '.pyc$', '.jar$', '.omc$', '.class$']

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
" }}}
" プラグインのロード
" Vim Utilities
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim', {'autoload' : {'commands' : ['Unite']}}
NeoBundle 'h1mesuke/unite-outline', {'autoload' : {'commands' : ['Unite']}}
NeoBundle 'tsukkee/unite-tag', {'autoload' : {'commands' : ['Unite']}}
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'houtsnip/vim-emacscommandline'

" Color Schemes
NeoBundle 'nanotech/jellybeans.vim'

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
NeoBundleLazy 'miripiruni/CSScomb-for-Vim', {'autoload': {'filetypes': ['css', 'html']}}

" Visual Guides
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'scrooloose/nerdtree'
if has('gui_running')
  NeoBundle 'thinca/vim-fontzoom'
endif

" Programming Supports
NeoBundle 'a.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'

" Syntax files

NeoBundleLazy 'vim-ruby/vim-ruby', {'autoload': {'filetypes': ['ruby']}}
NeoBundleLazy 'groenewege/vim-less', {'autoload': {'filetypes': ['less']}}
NeoBundleLazy 'cakebaker/scss-syntax.vim', {'autoload': {'filetypes': ['scss', 'sass']}}
NeoBundleLazy 'othree/html5.vim', {'autoload': {'filetypes': ['css', 'html']}}
NeoBundleLazy 'hail2u/vim-css3-syntax', {'autoload': {'filetypes': ['css', 'html']}}
NeoBundleLazy 'skammer/vim-css-color', {'autoload': {'filetypes': ['css', 'html']}}
NeoBundleLazy 'lukaszb/vim-web-indent', {'autoload': {'filetypes': ['css', 'html']}}
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload': {'filetypes': ['js', 'html']}}
NeoBundleLazy 'pangloss/vim-javascript', {'autoload': {'filetypes': ['js', 'html']}}
NeoBundleLazy 'jQuery', {'autoload': {'filetypes': ['js', 'html']}}
NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload': {'filetypes': ['coffee']}}
NeoBundleLazy 'briancollins/vim-jst', {'autoload': {'filetypes': ['ejs', 'jst']}} " ejs or jst
NeoBundleLazy 'nono/vim-handlebars', {'autoload': {'filetypes': ['handlebars', 'hbs']}}
NeoBundleLazy 'lunaru/vim-twig', {'autoload': {'filetypes': ['twig']}}
NeoBundleLazy 'ocim/htmljinja.vim', {'autoload': {'filetypes': ['jinja']}}
NeoBundleLazy 'digitaltoad/vim-jade', {'autoload': {'filetypes': ['jade']}}
NeoBundleLazy 'tpope/vim-haml', {'autoload': {'filetypes': ['haml']}}
NeoBundleLazy 'vim-scripts/autohotkey-ahk', {'autoload': {'filetypes': ['ahk']}}
NeoBundleLazy 'rosstimson/scala-vim-support', {'autoload': {'filetypes': ['scala']}}
NeoBundleLazy 'tpope/vim-markdown', {'autoload': {'filetypes': ['markdown', 'md', 'mkd']}}
NeoBundleLazy 'tpope/vim-cucumber', {'autoload': {'filetypes' : ['feature']}}
NeoBundleLazy 'zaiste/tmux.vim', {'autoload': {'filetypes' : ['tmux', 'conf']}}

" Text-Objects

NeoBundle 'kana/vim-textobj-user'
NeoBundle 'h1mesuke/textobj-wiw'
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'kana/vim-textobj-line'
NeoBundle 'kana/vim-textobj-fold'
NeoBundle 'kana/vim-textobj-entire'
NeoBundle 'kana/vim-textobj-syntax'
NeoBundle 'argtextobj.vim'
NeoBundleLazy  'nelstrom/vim-textobj-rubyblock', {'autoload': {'filetypes': ['ruby']}}


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
let g:neocomplcache_enable_camel_case_completion = 0
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

inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()



" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

let g:unite_enable_start_insert = 1

if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nocolor --nogroup --column'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('jvgrep')
  let g:unite_source_grep_command = 'jvgrep'
  let g:unite_source_grep_default_opts = '--exclude \.(git|svn|hg|bzr)'
  let g:unite_source_grep_recursive_opt = '-R'
endif
