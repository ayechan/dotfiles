" プラグインを設定する {{{
" 
"let g:neobundle#log_filename = "~/.vim/neobundle.log"
let g:indent_guides_auto_colors = 0   
let g:NERDTreeIgnore=['\.$', '\~$', '^\.svn$', '^\.git$', '^\.hg$', 'CVS', '^__pycache__$', '.pyc$', '.jar$', '.omc$', '.class$']
let g:syntastic_mode_map = { 'mode' : 'active',
      \ 'active_filetypes' : [],
      \ 'passive_filetypes' : ['html'] }
let g:easytags_dynamic_files = 1
let g:easytags_auto_highlight = 0
if has('macunix')
  let g:easytags_cmd = '/usr/local/bin/ctags'
endif
" endwise {{{
let g:endwise_no_mappings = 1
augroup cr2endwise
  autocmd!
  autocmd FileType lua,ruby,sh,zsh,vb,vbnet,aspvbs,vim imap <buffer> <CR> <CR><Plug>DiscretionaryEnd
augroup END
" }}}

" tagbar {{{
let g:tagbar_iconchars = ['▾', '▸']
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
" }}}

" NeoComplCache, NeoSnippet {{{
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 0
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" }}}

" unite.vim {{{

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

" }}}

" }}}

" プラグインのロード {{{
" Vim Utilities
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim', {'autoload' : {'commands' : ['Unite*']}}
NeoBundle 'h1mesuke/unite-outline', {'autoload' : {'commands' : ['Unite*']}}
NeoBundle 'tsukkee/unite-tag', {'autoload' : {'commands' : ['Unite*']}}
NeoBundle 'tsukkee/unite-help', {'autoload' : {'commands' : ['Unite*']}}
NeoBundle 'thinca/vim-unite-history', {'autoload' : {'commands' : ['Unite*']}}
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
NeoBundle 'benjifisher/matchit.zip'
NeoBundle 'h1mesuke/vim-alignta'
NeoBundleLazy 'mattn/zencoding-vim', {'autoload' : { 'insert':1}}
NeoBundleLazy 'kana/vim-smartinput', {'autoload' : { 'insert':1}}
NeoBundleLazy 'Shougo/neocomplcache', {'autoload' : { 'insert':1}}
NeoBundleLazy 'Shougo/neosnippet', {'autoload' : { 'insert':1}}
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
NeoBundle 'xolox/vim-easytags'

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

" }}}

" Powerline の設定 {{{
let g:Powerline_symbols = 'fancy'
call Pl#Theme#InsertSegment('charcode', 'before', 'fileformat')
call Pl#Theme#InsertSegment('pwd', 'before', 'scrollpercent')
" }}}

