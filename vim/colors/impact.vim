" Vim color file
" Maintainer:   Shirk <shirk@gmx.net>
" Last Change:  19 September 2005 - 0.2
" URL: trinity.gentoofreaks.org

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="impact"

if exists("g:impact_transbg")
        hi Normal       ctermfg=LightGray ctermbg=none
        hi NonText      ctermfg=DarkGray  ctermbg=none

        hi Statement    ctermfg=Blue      ctermbg=none
        hi Comment      ctermfg=DarkGray  ctermbg=none cterm=bold term=bold
        hi Constant     ctermfg=DarkCyan  ctermbg=none
        hi Identifier   ctermfg=Cyan      ctermbg=none
        hi Type         ctermfg=DarkGreen ctermbg=none
        hi Folded       ctermfg=DarkGreen ctermbg=none cterm=underline term=none
        hi Special      ctermfg=Blue      ctermbg=none
        hi PreProc      ctermfg=LightGray ctermbg=none cterm=bold term=bold
        hi Scrollbar    ctermfg=Blue      ctermbg=none
        hi Cursor       ctermfg=white     ctermbg=none
        hi ErrorMsg     ctermfg=Red       ctermbg=none cterm=bold term=bold
        hi WarningMsg   ctermfg=Yellow    ctermbg=none
        hi VertSplit    ctermfg=White     ctermbg=none
        hi Directory    ctermfg=Cyan      ctermbg=DarkBlue
        hi Visual       ctermfg=White     ctermbg=DarkGray cterm=underline term=none
        hi Title        ctermfg=White     ctermbg=DarkBlue

        hi StatusLine   term=bold cterm=none  ctermfg=White ctermbg=Black
        hi StatusLineNC term=bold cterm=none  ctermfg=Gray  ctermbg=Black
        hi LineNr       term=bold cterm=bold ctermfg=White ctermbg=Black
  
        hi Pmenu        ctermfg=#000000       ctermbg=#a6a190       cterm=NONE
        hi PmenuSel     ctermfg=#ffffff       ctermbg=#133293       cterm=NONE
        hi PmenuSbar    ctermfg=NONE          ctermbg=#555555       cterm=NONE
        hi PmenuThumb   ctermfg=NONE          ctermbg=#cccccc       cterm=NONE


else
        hi Normal       ctermfg=LightGray ctermbg=Black
        hi NonText      ctermfg=DarkGray  ctermbg=Black

        hi Statement    ctermfg=Blue      ctermbg=Black
        hi Comment      ctermfg=DarkGray  ctermbg=Black cterm=bold term=bold
        hi Constant     ctermfg=DarkCyan  ctermbg=Black
        hi Identifier   ctermfg=Cyan      ctermbg=Black
        hi Type         ctermfg=DarkGreen ctermbg=Black
        hi Folded       ctermfg=DarkGreen ctermbg=Black cterm=underline term=none
        hi Special      ctermfg=Blue      ctermbg=Black
        hi PreProc      ctermfg=LightGray ctermbg=Black cterm=bold term=bold
        hi Scrollbar    ctermfg=Blue      ctermbg=Black
        hi Cursor       ctermfg=white     ctermbg=Black
        hi ErrorMsg     ctermfg=Red       ctermbg=Black cterm=bold term=bold
        hi WarningMsg   ctermfg=Yellow    ctermbg=Black
        hi VertSplit    ctermfg=White     ctermbg=Black
        hi Directory    ctermfg=Cyan      ctermbg=DarkBlue
        hi Visual       ctermfg=White     ctermbg=DarkGray cterm=underline term=none
        hi Title        ctermfg=White     ctermbg=DarkBlue

        hi StatusLine   term=bold cterm=none ctermfg=White ctermbg=DarkGray
        hi StatusLineNC term=bold cterm=bold,underline ctermfg=Gray  ctermbg=Black
        hi LineNr       term=bold cterm=bold ctermfg=DarkGray ctermbg=Black

        hi Pmenu        ctermfg=white       ctermbg=darkgray    cterm=NONE
        hi PmenuSel     ctermfg=white       ctermbg=lightblue   cterm=NONE
        hi PmenuSbar    ctermfg=black       ctermbg=black       cterm=NONE
        hi PmenuThumb   ctermfg=gray        ctermbg=gray        cterm=NONE

endif
