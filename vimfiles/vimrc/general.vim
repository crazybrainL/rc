" zM: fold all
" ZR: unfold all
" Esc Keymapping: {{{

inoremap jk <esc>

" }}}
" Leader_key_mapping:{{{
let mapleader="\\"
" }}}
" General: {{{

"" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax enable
set t_Co=256          " 256 color mode
set background=dark

color Tomorrow-Night-Bright

set ttyfast
set number

set nocompatible        " not compatible with the old-fashion vi mode
set ruler               " show the cursor position all the time
set autoread            " auto read when file is changed from outside

filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins
filetype indent on    " Enable filetype-specific indenting

"" status line
set laststatus=2

set title
set showmode            " Show current input mode in status line
set cursorline         " Show Cursor Line in Underline
"set showtabline=2
set wildmenu " Show autocomplete menus.
set visualbell

"" set column width
if v:version >= 704
set colorcolumn=80
endif

set nobackup
set noswapfile

" }}}
" Set_encoding: {{{
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set termencoding=utf-8
set ambiwidth=double
" }}}
" Disable_sound_on_errors: {{{
set noerrorbells
set novisualbell
set tm=500

" }}}
" Search: {{{
set showcmd
set incsearch
set showmatch
set ignorecase
set smartcase

set hls

nmap <ESC>u :nohl<CR>
" }}}
" Folding: {{{

""" set folding
set foldnestmax=1
set foldcolumn=1

set foldmethod=syntax
set foldlevel=99

"augroup foldccpp
    "au BufNewFile,BufFilePost,BufReadPost,FileReadPost *.c,*.h,*.cpp set foldmethod=syntax
    "au BufNewFile,BufFilePost,BufReadPost,FileReadPost *.c,*.h,*.cpp set foldlevel=99 
"augroup END

" }}}
" Indent: {{{

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab            " insert tabs on the start of a line according to context
set backspace=indent,eol,start

" indent key mapping
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv
" }}}
" Function_key: {{{

nmap <silent><F1> :tab h<CR>
nmap <silent><F2> :VimFiler<CR>
nmap <silent><F3> :VimFilerExplorer<CR>
"nmap <silent><F6> :CCTreeLoadDB cscope.out<CR>

autocmd FileType c,cpp nmap <silent><F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . && cscope -bR<CR>
autocmd FileType python nmap <silent><F5> :!ctags -R .<CR>
autocmd FileType haskell nmap <silent><F5> :!hasktags -c .<CR>
" }}}
" Windows_Resize: {{{

nmap + <C-w>> 

" }}}
" Tab_setting: {{{

"" Tab_bar_color
hi TabLine           cterm=underline ctermfg=15    ctermbg=242   gui=underline guibg=#6c6c6c guifg=White
"hi TabLineSel        cterm=bold      gui=NONE      guifg=White
"hi TabLineFill       cterm=reverse   gui=reverse

nmap <leader>tc :tabnew<CR>
nmap <leader>te :tabedit<SPACE>
nmap <leader>tm :tabmove<SPACE>
nmap <leader>tk :tabclose<CR>
nmap <C-H> :tabprev<CR>
nmap <C-L> :tabnext<CR>

autocmd TabLeave * let g:LastUsedTabPage = tabpagenr()
function! SwitchLastUsedTab()
    if exists("g:LastUsedTabPage")
        execute "tabnext " g:LastUsedTabPage
    endif
endfunction

nmap tt :call SwitchLastUsedTab()<CR>

" }}}
" Filetype: {{{
if v:version >= 704
    "" C/ CPP with doxygen
    au BufNewFile,BufRead *.c set filetype=c.cpp.doxygen
    au BufNewFile,BufRead *.cpp set filetype=cpp.doxygen
    au BufNewFile,BufRead *.h set filetype=c.cpp.doxygen

    "" Markdown
    au BufNewFile,BufRead *.md set filetype=mkd.markdown
    au BufNewFile,BufRead *.mkd set filetype=mkd.markdown
    au BufNewFile,BufRead *.markdown set filetype=mkd.markdown
endif
" }}}
" Programming: {{{

nmap <leader>m :make<cr>
nmap <leader>n :make clean<cr>
nmap <leader>q :SQFix<cr>

com! -bang -nargs=? SQFix cal QFixToggle(<bang>0)
fu! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
        unlet g:qfix_win
    else
        copen 10
        let g:qfix_win = bufnr("$")
        en
    endf

"" open the error console
nmap <leader>qc :botright cope<CR>
"map <C-n> <ESC>:cnext<CR>
"map <C-p> <ESC>:cprev<CR>

map <S-F8> <ESC>:colder<CR>
map <C-F8> <ESC>:cnewer<CR>

"" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm'\"")|else|exe "norm $"|endif|endif

"" Auto remove each line-end space
autocmd FileType c,cpp,java,php,perl,python,ruby,sh,v,tex autocmd BufWritePre  :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","
")'))

" }}}
" Todo List: {{{
function! CheckMarkdownTodoItem()
    let s = getline(line('.')) 
    if match(s, '\[x\]') > -1
        s/\[x\]/\[ \]/
        s/ (Finished: \(.* .*\))//
    elseif match(s, '\[ \]') > -1
        s/\[ \]/\[x\]/ 

        call cursor(line('.'), $)
        exe "normal! A (Finished: " . strftime("%a %Y-%m-%d") . " " . strftime("%T") .")\<Esc>"
    else
        echo "No Item"
    endif
endfunction

function! AddNewMarkdownToDo()
    exe "normal! o* [ ]  \<Esc>"
endfunction

autocmd FileType mkd noremap <leader>gc :call AddNewMarkdownToDo()<cr>
autocmd FileType mkd noremap <C-d>  :call CheckMarkdownTodoItem()<cr>
" }}}

" vim: ft=vim foldmethod=marker foldcolumn=1 
