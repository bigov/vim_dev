"
" Слегка переделанная схема "default"
"
" фон активной линии и границы текста
let color0 = "#f0f0ff"
" фон разделителя окон
let color1 = "#6296C0"
" цвет комментариев
let color2 = "#a8a8a8"

colorscheme default
" Подсветка пробелов и табов
highlight SpecialKey guifg=#bbbbff ctermfg=252

exec "highlight CursorLine cterm=NONE ctermbg=NONE guifg=NONE guibg=".color0
exec "highlight ColorColumn ctermbg=254 guibg=".color0
exec "highlight Comment ctermfg=248  guifg=".color2
highlight LineNr ctermfg=242 ctermbg=7 guibg=#e4e4e4 guifg=#777777
exec "highlight CursorLineNr ctermfg=0 ctermbg=7 cterm=bold guibg=".color0.
   \" guifg=".color2
exec "highlight StatusLine ctermfg=242 ctermbg=15 guifg=".color1
exec "highlight StatusLineNC ctermfg=250 ctermbg=8 guifg=".color1
exec "highlight VertSplit guifg=".color1

highlight Normal ctermbg=15 guibg=#f8f8f8
highlight Constant guifg=#3333bb ctermfg=darkblue
highlight Pmenu guibg=#99ff99 guifg=#222222
highlight PmenuSel guibg=#ffff88 guifg=#444444 gui=bold
highlight TabLineFill ctermfg=242
highlight TabLine cterm=NONE ctermbg=250

" Подсветка в окне тегов (открывается по F8)
highlight MyTagListFileName guibg=#bcbcff guifg=#3030d0 gui=bold
highlight MyTagListTitle guifg=#44aa44 gui=bold
"    MyTagListTagName  - Used for tag names
"    MyTagListTagScope - Used for tag scope
"    MyTagListTitle    - Used for tag titles
"    MyTagListComment  - Used for comments
"    MyTagListFileName - Used for filenamesa
"
