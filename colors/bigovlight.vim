let g:colors_name = "bigovlight"

hi clear
set background=light
set notermguicolors
set cursorline
if exists("syntax_on")
    syntax reset
endif

set background=light
set t_Co=256
colorscheme default

" Разделитель окон
highlight VertSplit ctermfg=67 ctermbg=67 guifg=#005F87 guibg=#005F87

" Колонка с номерами строк
highlight LineNr ctermfg=7 ctermbg=67 guifg=#f8f8f0 guibg=#465457

" Подсветка номера строки на линии курсора
set cursorline
highlight CursorLine cterm=NONE gui=NONE ctermbg=NONE guibg=NONE
highlight CursorLineNr cterm=NONE ctermfg=0 ctermbg=LightGrey guifg=#080808 guibg=#cdcdcd

" Подсветка вертикальной границы 80 символов
highlight ColorColumn ctermbg=7 guibg=#F3F3FE

" Подсветка пробелов и табов
set list " Подсветка " " пробелов и "  " табов
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»
highlight SpecialKey guifg=#bbbbff ctermfg=252

" Подсветка элементов синтаксиса
highlight Comment ctermfg=248  guifg=#909090 gui=italic
highlight Function ctermfg=88 cterm=none
highlight Type ctermfg=28 guifg=darkgreen
highlight String ctermfg=26 guifg=#5574F2 cterm=italic
highlight PreProc ctermfg=33 guifg=#6F05B0
highlight Keyword ctermfg=64 cterm=bold
highlight Conditional cterm=bold ctermfg=160
highlight Operator cterm=none ctermfg=21
highlight Include ctermfg=26
highlight Identifier ctermfg=26 cterm=bold guifg=#444488 gui=bold
highlight Special ctermfg=26 guifg=#005fd7


