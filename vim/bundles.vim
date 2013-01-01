" プラグインを設定する
let g:Powerline_symbols = 'fancy'
let g:indent_guides_enable_on_vim_startup = 1   
let g:indent_guides_auto_colors = 0   
let g:endwise_no_mappings = 1
let g:tagbar_iconchars = ['▾', '▸']
"let g:neobundle#log_filename = "~/.vim/neobundle.log"
let g:NERDTreeIgnore=['\.$', '\~$', '^\.svn$', '^\.git$', '^\.hg$', 'CVS', '^__pycache__$', '.pyc$', '.jar$', '.class$']

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
NeoBundle 'https://bitbucket.org/ns9tks/vim-l9'
NeoBundle 'Shougo/vimproc'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'rson/vim-conque'
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
NeoBundle 'https://bitbucket.org/ns9tks/vim-autocomplpop'
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
NeoBundle 'xlevus/vim-web-indent' "This works well for html-inlined javascripts.
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

" Mapping leader shortcuts for plugins

nnoremap <Leader>e :<C-u>NERDTreeToggle <return>
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
