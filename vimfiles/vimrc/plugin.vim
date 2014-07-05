" General: {{{
set nocompatible
filetype off
" }}}

if v:version >= 702

" Leader_key_mapping:{{{
let mapleader = ","
" }}}
" Plugin Path Setting: {{{
if has('vim_starting')
    if has('win32')
        set runtimepath+=~/_vim/bundle/neobundle.vim/
    else
        set runtimepath+=~/.vim/bundle/neobundle.vim/
    endif
endif

if has('win32')
    call neobundle#rc(expand('~/_vim/bundle/'))
else
    call neobundle#rc(expand('~/.vim/bundle/'))
endif
" }}}
" Plugin: {{{
"" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"" Recommended to install
"" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

"" unite.vim and plugins
NeoBundleLazy 'Shougo/unite.vim', { 'autoload' : {
      \ 'commands' : 'Unite'
      \ }}
NeoBundleLazy 'Shougo/neomru.vim', { 'autoload' : {
      \ 'unite_sources' : 'file_mru'
      \ }}
NeoBundleLazy 'tsukkee/unite-tag', { 'autoload' : {
      \ 'unite_sources' : 'tag'
      \ }}
NeoBundleLazy 'Shougo/unite-outline', { 'autoload' : {
      \ 'unite_sources' : 'outline'
      \ }}
NeoBundleLazy 'Shougo/unite-help', { 'autoload' : {
      \ 'unite_sources' : 'help'
      \ }}
NeoBundleLazy 'ujihisa/unite-launch', { 'autoload' : {
      \ 'unite_sources' : 'lanunch'
      \ }}
NeoBundleLazy 'ujihisa/unite-locate', { 'autoload' : {
      \ 'unite_sources' : 'locate',
      \ }}
NeoBundleLazy 'osyo-manga/unite-filetype', { 'autoload' : {
      \ 'unite_sources' : 'filetype',
      \ }}
NeoBundleLazy 'thinca/vim-unite-history', { 'autoload' : {
      \ 'unite_sources' : 'history',
      \ }}
NeoBundleLazy 'Shougo/neobundle-vim-recipes', { 'autoload' : {
      \ 'unite_sources' : 'neobundle',
      \ }}
NeoBundleLazy 'thinca/vim-qfreplace', { 'autoload' : {
      \ 'unite_sources' : 'grep',
      \ }}
NeoBundle "Shougo/vimfiler.vim"

"" Edit
NeoBundle "tpope/vim-surround"
NeoBundle "tpope/vim-endwise"
NeoBundle "tpope/vim-speeddating"
NeoBundle "scrooloose/nerdcommenter"
NeoBundle "Raimondi/delimitMate"
NeoBundleLazy 'plasticboy/vim-markdown', { 'autoload' : {
      \ 'filetypes' : 'mkd'
      \ }}
NeoBundleLazy "Rykka/riv.vim", { 'autoload' : {
      \ 'filetypes' : 'rst'
      \ }}
NeoBundleLazy 'mattn/emmet-vim', { 'autoload' : {
      \ 'filetypes' : 'html'
      \ }}
NeoBundle "michaeljsmith/vim-indent-object"
NeoBundleLazy "vim-scripts/DoxygenToolkit.vim", { 'autoload' : {
      \ 'filetypes' : 'cpp'
      \ }}
"NeoBundle "godlygeek/tabular"


"" IDE 
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'majutsushi/tagbar'
NeoBundle "MarcWeber/vim-addon-mw-utils"

"" Trace code
NeoBundleLazy "simplyzhao/cscope_maps.vim", { 'autoload' : {
      \ 'filetypes' : 'c'
      \ }}
NeoBundleLazy 'vim-scripts/CCTree' , { 'autoload' : {
      \ 'filetypes' : 'c'
      \ }}

"" Haskell
"NeoBundle "lukerandall/haskellmode-vim"
"NeoBundle "vim-scripts/Superior-Haskell-Interaction-Mode-SHIM"
"NeoBundle "Twinside/vim-haskellConceal"
NeoBundleLazy 'ujihisa/neco-ghc', { 'autoload' : {
      \ 'filetypes' : 'haskell'
      \ }}

"" Python
NeoBundleLazy 'klen/python-mode', { 'autoload' : {
      \ 'filetypes' : 'python'
      \ }}
NeoBundle 'xitianfz/vim-python-syntax', { 'autoload' : {
      \ 'filetypes' : 'python'
      \ }}

"" Git
NeoBundle "tpope/vim-fugitive"

"" Autocomplete
""" For vim 7.3.835 or above and if_lua enable
"NeoBundle "Shougo/neocomplete.vim"

if v:version >= 704
    if has("mac")
NeoBundle 'Shougo/neocomplete'
    else
NeoBundle "Shougo/neocomplcache.vim"
    endif
endif

NeoBundle "Shougo/neosnippet.vim"
NeoBundle 'Shougo/neosnippet-snippets'

"" Syntax check
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Twinside/vim-cuteErrorMarker'

"" Apperance 
NeoBundle 'bling/vim-airline'
NeoBundle 'mkitt/tabline.vim'
NeoBundleLazy 'octol/vim-cpp-enhanced-highlight', { 'autoload' : {
      \ 'filetypes' : 'cpp'
      \ }}
NeoBundleLazy "ap/vim-css-color", { 'autoload' : {
      \ 'filetypes' : 'css'
      \ }}
NeoBundleLazy "vim-scripts/DirDiff.vim", { 'autoload' : {
      \  'commands': 'DirDiff' 
      \ }}
NeoBundleLazy "aaronbieber/quicktask", { 'autoload' : {
      \ 'filetypes' : 'quicktask'
      \ }}
NeoBundleLazy "elentok/plaintasks.vim", { 'autoload' : {
      \ 'filetypes' : 'plaintasks'
      \ }}
"NeoBundleLazy 'yomi322/vim-gitcomplete', { 'autoload' : {
      "\ 'filetype' : 'vimshell'
      "\ }}
"NeoBundleLazy 'Shougo/vimshell', {
      "\ 'autoload' : {
      "\   'commands': 'VimShellInteractive' 
      "\ }}

filetype plugin indent on

NeoBundleCheck
" }}}
" Unite: {{{
let g:unite_enable_split_vertically = 1

let g:unite_source_file_mru_long_limit = 3000
let g:unite_source_file_mru_time_format = "%m/%d %T "
let g:unite_source_directory_mru_limit = 80
let g:unite_source_directory_mru_long_limit = 3000
let g:unite_source_directory_mru_time_format = "%m/%d %T "
let g:unite_source_file_rec_max_depth = 20 

let g:unite_source_rec_max_cache_files = 2000

let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

let g:unite_enable_use_short_source_names = 1

"" File search
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#custom#source("file_rec", "ignore_pattern", "build/*")
noremap <silent><C-P> :Unite -no-split -start-insert file_rec buffer<CR>
noremap <silent><leader>p :UniteWithCursorWord -no-split -start-insert file_rec buffer<CR>
noremap <silent><leader>b :Unite -no-split -start-insert buffer file_mru bookmark<CR>


"" shortcup
"noremap <silent><leader>u  :<C-u>Unite -start-insert mapping<CR>

"" Execute help.
"noremap <silent><leader>h  :Unite -start-insert -no-split -default-action=tabopen help<CR>

"" Tab search/ switch
noremap <silent><leader>t :Unite -quick-match tab<CR>


"" Tag search

""" For searching the word in the cursor in tag file 
noremap <silent><leader>f :UniteWithCursorWord -no-split tag<CR>
noremap <silent><leader>ff :Unite tag -start-insert -no-split<CR>

"" grep dictionay

""" For searching the word in the cursor in the current directory
noremap <silent><leader>s :UniteWithCursorWord -no-split grep:.<CR>
noremap <silent><leader>ss :Unite -no-split grep:.<CR>

""" For searching the word in the cursor in the current buffer
noremap <silent><leader>sf :UniteWithCursorWord -no-split grep:%<CR>

""" For searching the word in the cursor in all opened buffer
noremap <silent><leader>sa :UniteWithCursorWord -no-split grep:$buffers<CR>

let g:unite_source_grep_default_opts = "-iRHn"
\ . " --exclude='tags'"
\ . " --exclude='cscope*'"
\ . " --exclude='*.svn*'"
\ . " --exclude='*.log*'"
\ . " --exclude='*tmp*'"
\ . " --exclude-dir='**/tmp'"
\ . " --exclude-dir='CVS'"
\ . " --exclude-dir='.svn'"
\ . " --exclude-dir='.git'"
\ . " --exclude-dir='node_modules'"

"" outline
nnoremap <leader>o :Unite -start-insert -no-split outline<CR>

"" Line search
nnoremap <leader>l :Unite line -start-insert -no-split<CR>

"" Yank history
let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

nnoremap <silent> ;m :<C-u>Unite menu -resume<CR>

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.interpreter = {
      \     'interpreter' : 'Run interpreter in VimShell.',
      \ }
let g:unite_source_menu_menus.interpreter.command_candidates = {
      \       'ghci'         : 'VimShellInteractive ghci',
      \       'python'       : 'VimShellInteractive python',
      \    }
let g:unite_source_menu_menus.unite = {
      \     'description' : 'Start unite sources.',
      \ }
let g:unite_source_menu_menus.unite.command_candidates = {
      \       'shortcut'        : 'Unite mapping',
      \       'help'            : 'Unite -start-insert -no-split -default-action=tabopen help',
      \       'history'         : 'Unite history/command',
      \       'quickfix'        : 'Unite qflist -no-quit',
      \       'resume'          : 'Unite -buffer-name=resume resume',
      \       'directory'       : 'Unite -buffer-name=files '.
      \             '-default-action=lcd directory_mru',
      \       'mapping'         : 'Unite mapping',
      \       'message'         : 'Unite output:message',
      \       'scriptnames'     : 'Unite output:scriptnames',
      \       'filetype'        : 'Unite -auto-preview filetype',
      \       'search plugin'   : 'Unite -no-split neobundle/search',
      \       'top'             : 'Unite process',
      \     }
let g:unite_source_menu_menus.enc = {
      \     'description' : 'Open with a specific character code again.',
      \ }
let g:unite_source_menu_menus.enc.command_candidates = [
      \       ['utf8', 'Utf8'],
      \       ['iso2022jp', 'Iso2022jp'],
      \       ['cp932', 'Cp932'],
      \       ['euc', 'Euc'],
      \       ['utf16', 'Utf16'],
      \       ['utf16-be', 'Utf16be'],
      \       ['jis', 'Jis'],
      \       ['sjis', 'Sjis'],
      \       ['unicode', 'Unicode'],
      \     ]
" }}}
" Airline: {{{
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline#extensions#whitespace#enabled = 0 
" }}}
" VimFiler: {{{
"call vimfiler#set_execute_file('txt', 'vim')
"call vimfiler#set_execute_file('c', 'vim')
"call vimfiler#set_execute_file('cpp', 'vim')
"call vimfiler#set_execute_file('python', 'vim')

let g:vimfiler_as_default_explorer = 1
" }}}
"Tagbar: {{{

let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30
let g:tagbar_autofocus = 1

" }}}
" NERDTree: {{{
let NERDTreeWinSize = 20
" }}}
" Markdown: {{{
let g:vim_markdown_folding_disabled=1
" }}}
" Cctree: {{{
" set updatetime
set updatetime=0
let g:CTreeRecursiveDepth = 10 
let g:CCTreeKeyTraceForwardTree = ''
let g:CCTreeKeyTraceReverseTree = ''
let g:CCTreeKeyToggleWindow = '<leader>w'

nnoremap <leader>. :CCTreeTraceForward <C-R><C-w><CR>
nnoremap <leader>, :CCTreeTraceReverse <C-R><C-w><CR>

" }}}
" Doxygentoolkit: {{{

nmap <leader>d :Dox<CR> 

" }}}
    if v:version >=704
        if has("mac")
" Neocomplete: {{{
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" }}}
        else
" Neocomplcache: {{{
set infercase

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete


if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \   if &omnifunc == "" |
        \           setlocal omnifunc=syntaxcomplete#Complete |
        \   endif
endif

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" }}}
        endif
" Neosnippet: {{{
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" }}}
    endif " if v:version >= 704

" Pymode: {{{
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_completion = 0
" }}}
endif " if v:version >= 702

" vim: ft=vim foldmethod=marker foldcolumn=1
