" Vim color file
" Maintainer:  Tomasz Bywalec <t.bywalec@gmail.com>
" Last Change: 2018 Jun 06
" URL:         https://gitlab.com/tomac/vim-colors-nobold
"
" Modification of "slate" color scheme shipped with Vim, with "bold"
" attribute removed in GUI and terminal, but not in text console.
"
" Requires original "slate" color scheme.

hi clear
if exists("syntax_on")
	syntax reset
endif

" Load original "slate" color scheme.
runtime colors/slate.vim

let g:colors_name = "slate-nobold"

" Don't modify color scheme if we're in text console.
if has("gui_running") || !empty($DISPLAY)

	"
	" Remove bold attribute.
	"

	hi SpecialKey     term=NONE
	hi NonText        term=NONE cterm=NONE gui=NONE
	hi Directory      term=NONE
	hi ErrorMsg       cterm=NONE
	hi MoreMsg        term=NONE gui=NONE
	hi ModeMsg        term=NONE gui=NONE
	hi CursorLineNr   term=NONE gui=NONE
	hi Question       gui=NONE
	hi StatusLine     term=reverse cterm=reverse
	hi Title          term=NONE cterm=NONE gui=NONE
	hi VisualNOS      cterm=underline gui=underline
	hi DiffAdd        term=NONE
	hi DiffChange     term=NONE
	hi DiffDelete     term=NONE cterm=NONE gui=NONE
	hi DiffText       cterm=NONE gui=NONE
	hi TabLineSel     term=NONE cterm=NONE gui=NONE
	hi StatusLineTerm term=reverse cterm=NONE gui=NONE
	hi ToolbarButton  cterm=NONE gui=NONE
	hi Comment        term=NONE
	hi Special        term=NONE
	hi Identifier     cterm=NONE
	hi Statement      term=NONE gui=NONE
	hi Type           gui=NONE
	hi Ignore         cterm=NONE
	hi Error          cterm=NONE
	hi Define         gui=NONE
	hi SpellErrors    cterm=NONE

	"
	" Status line
	"

	hi StatusLine       ctermbg=DarkGray
	hi StatusLineTerm   ctermfg=DarkGray
	hi StatusLineTermNC guifg=#007700

endif
