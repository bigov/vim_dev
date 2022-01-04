" Bigov's light colors theme
let g:colors_name = "bl"

if &term == "screen"
  set t_Co=256
endif

set cursorline
set notermguicolors
set background=light

" Подсветка пробелов, табов и др. символов
set list
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»

hi clear Normal
set bg&
hi clear
if exists("syntax_on")
    syntax reset
endif

hi Normal guibg=white guifg=grey16 gui=NONE ctermbg=255 ctermfg=16

" Разделитель окон
hi VertSplit ctermfg=67 ctermbg=67 guifg=gray90 guibg=gray90
hi SignColumn guibg=white guifg=gray90 ctermfg=0

" Колонка с номерами строк
hi LineNr ctermfg=254 ctermbg=67 guifg=gray80 guibg=white
" Строка статуса
hi StatusLine ctermfg=67

" Подсветка номера строки на линии курсора
hi CursorLine cterm=NONE gui=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi CursorLineNr cterm=NONE ctermfg=67 ctermbg=253 guifg=gray50 guibg=gray90 gui=NONE

" Подсветка вертикальной границы 80 символов
hi ColorColumn ctermbg=255 guibg=grey94

" Подсветка пробелов и табов
hi SpecialKey guifg=lightblue3 ctermfg=252

" Подсветка элементов синтаксиса
hi Comment ctermfg=246  guifg=#909090 gui=italic
hi Function ctermfg=88 cterm=none
hi Type ctermfg=28 guifg=darkmagenta
hi String ctermfg=26 guifg=#1386C6 cterm=italic
hi PreProc ctermfg=33 guifg=#6F05B0
hi Keyword ctermfg=64 cterm=bold
hi Conditional cterm=bold ctermfg=160 guifg=red3 gui=bold
hi Operator cterm=none ctermfg=21
hi Include ctermfg=26 guifg=purple gui=bold
hi Identifier ctermfg=26 cterm=bold guifg=#444488 gui=bold
hi Special ctermfg=26 guifg=#005fd7
hi Number guifg=red gui=bold
hi Label guifg=blue4
hi ColorColumn guifg=tan3 ctermfg=88
hi Conceal guifg=tan3 ctermfg=88
hi Constant guifg=tan3 ctermfg=88
hi Cursor guibg=lightblue guifg=blue ctermbg=250 ctermfg=0
hi CursorColumn guifg=tan3 ctermfg=88
hi DiffAdd guifg=tan3 ctermfg=88
hi DiffChange guifg=tan3 ctermfg=88
hi DiffDelete guifg=tan3 ctermfg=88
hi DiffText guifg=tan3 ctermfg=88
hi Directory guifg=tan3 ctermfg=88
hi EndOfBuffer guifg=tan3 ctermfg=88
hi Error guibg=salmon guifg=NONE ctermbg=1 ctermfg=15
hi ErrorMsg guibg=firebrick guifg=yellow ctermbg=1 ctermfg=15
hi FoldColumn guifg=tan3 ctermfg=88
hi Folded guifg=tan3 ctermfg=88
hi Ignore guifg=tan3 ctermfg=88
hi IncSearch guifg=NONE guibg=lawngreen ctermfg=88
hi MatchParen guifg=tan3 ctermfg=88
hi ModeMsg guifg=grey24 ctermfg=235
hi MoreMsg guifg=grey24 ctermfg=235
hi NonText guifg=tan3 ctermfg=88
hi Pmenu guifg=tan3 ctermfg=88
hi PmenuSbar guifg=tan3 ctermfg=88
hi PmenuSel guifg=tan3 ctermfg=88
hi PmenuThumb guifg=tan3 ctermfg=88
hi Question guifg=tan3 ctermfg=88
hi QuickFixLine guifg=tan3 ctermfg=88
hi Search guifg=NONE guibg=lawngreen ctermfg=88
hi SpellBad guifg=tan3 ctermfg=88
hi SpellCap guifg=grey24 ctermfg=0
hi SpellLocal guifg=grey24 ctermfg=0
hi SpellRare guifg=grey24 ctermfg=0
hi Statement guifg=blue4 ctermfg=0
hi StatusLine guifg=grey24 ctermfg=0
hi StatusLineNC guifg=grey24 ctermfg=0
hi StatusLineTerm guifg=grey24 ctermfg=0
hi StatusLineTermNC guifg=grey24 ctermfg=0
hi TabLine guifg=grey24 ctermfg=0
hi TabLineFill guifg=grey24 ctermfg=0
hi TabLineSel guifg=grey24 ctermfg=0
hi Title guifg=grey24 ctermfg=0
hi Todo guifg=grey24 ctermfg=0
hi ToolbarButton guifg=grey24 ctermfg=0
hi ToolbarLine guifg=grey24 ctermfg=0
hi Underlined guifg=grey24 ctermfg=0
hi Visual guifg=grey24 ctermfg=0
hi VisualNOS guifg=grey24 ctermfg=0
hi WarningMsg guifg=orange3 ctermfg=202
hi WildMenu guifg=grey24 ctermfg=0

