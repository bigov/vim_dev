"
" переделанная схема "default"
"
" фон активной линии и границы текста
let color0 = "#f0f0ff"
" фон разделителя окон
let color1 = "#6296C0"

colorscheme default
" Подсветка пробелов и табов
highlight SpecialKey guifg=#bbbbff ctermfg=252

exec "highlight CursorLine cterm=NONE ctermbg=NONE guifg=NONE guibg=".color0
exec "highlight ColorColumn ctermbg=254 guibg=".color0
exec "highlight CursorLineNr ctermfg=0 ctermbg=7 cterm=bold guibg=".color0.
    \" guifg=".color2
exec "highlight StatusLine ctermfg=242 ctermbg=15 guifg=".color1
exec "highlight StatusLineNC ctermfg=250 ctermbg=8 guifg=".color1
exec "highlight VertSplit guifg=".color1

highlight Comment ctermfg=248  guifg=#909090 gui=italic
highlight LineNr ctermfg=242 ctermbg=7 guibg=#e4e4e4 guifg=#777777
highlight Normal ctermbg=15 guibg=#ffffff
highlight Constant guifg=#3333bb ctermfg=darkblue
highlight Pmenu guibg=#99ff99 guifg=#222222
highlight PmenuSel guibg=#ffff88 guifg=#444444 gui=bold
highlight TabLineFill ctermfg=242
highlight TabLine cterm=NONE ctermbg=250
highlight Error guifg=#ff4444 guibg=NONE gui=bold,undercurl guisp=Red
highlight Type ctermfg=darkgreen
highlight Statement ctermfg=brown guifg=#884444 gui=bold
highlight Identifier guifg=#444488 gui=bold
highlight Directory guifg=#444488 gui=bold
highlight String guifg=#8888ee

" Подсветка в окне тегов (открывается по F8)
highlight MyTagListFileName guibg=#bcbcff guifg=#3030d0 gui=bold
highlight MyTagListTitle guifg=#44aa44 gui=bold
"    MyTagListTagName  - Used for tag names
"    MyTagListTagScope - Used for tag scope
"    MyTagListTitle    - Used for tag titles
"    MyTagListComment  - Used for comments
"    MyTagListFileName - Used for filenamesa
"
