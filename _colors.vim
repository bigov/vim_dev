" Correcting default color scheme
" ===============================

set t_Co=256
colorscheme default

" Разделитель окон
highlight VertSplit ctermfg=3 ctermbg=15 guifg=#005F87 guibg=#005F87

" Колонка с номерами строк
"highlight LineNr ctermbg=24 ctermfg=255 guibg=#005F87 guifg=#eeeeee
highlight LineNr ctermfg=15 ctermbg=8 guifg=#f8f8f0 guibg=#465457

" Подсветка номера строки на линии курсора
set cursorline
highlight CursorLine cterm=NONE gui=NONE ctermbg=NONE guibg=NONE
highlight CursorLineNr cterm=NONE ctermfg=0 ctermbg=LightGrey guifg=#080808 guibg=#cdcdcd

" Подсветка вертикальной границы 80 символов
highlight ColorColumn ctermbg=darkgray guibg=#F3F3FE

" Подсветка пробелов и табов
set list " Подсветка " " пробелов и "  " табов
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»
highlight SpecialKey guifg=#bbbbff ctermfg=252

highlight Pmenu guibg=#99ff99 guifg=#222222
highlight PmenuSel guibg=#ffff88 guifg=#444444 gui=bold
highlight TabLineFill ctermfg=242
highlight TabLine cterm=NONE ctermbg=250
highlight Directory guifg=#444488 gui=bold
highlight MatchParen guibg=bg guifg=red gui=bold

" Подсветка элементов синтаксиса
highlight PreProc ctermfg=33 guifg=#6F05B0
highlight Comment ctermfg=248  guifg=#909090 gui=italic
highlight Constant guifg=#3333bb ctermfg=lightgreen
highlight Error guifg=#ff4444 guibg=NONE gui=bold,undercurl guisp=Red
highlight Type ctermfg=green guifg=darkgreen
highlight Statement ctermfg=brown guifg=#884444 gui=bold
highlight Identifier guifg=#444488 gui=bold
highlight String guifg=#5574F2

" Подсветка текста, который дальше границы 79
"match PreProc /\%>79v.\+/ " text color for border column = Preproc
"
" Настройка строки статуса (для строки "airline" настроена своя тема)
"set statusline=[%n]\ %<%f\ [%Y%R,%{&ff},%{&fenc}%W]%=%m\ %03l/%03L\ [%03v\ %03b]
"exec "highlight StatusLine ctermfg=242 ctermbg=15 guifg=".color1
"exec "highlight StatusLineNC ctermfg=250 ctermbg=8 guifg=".color1

" Подсветка в окне тегов (открывается по F8)
" Переменные -
"    MyTagListTagName  - tag names
"    MyTagListTagScope - tag scope
"    MyTagListTitle    - tag titles
"    MyTagListComment  - comments
"    MyTagListFileName - filenames
"
"highlight MyTagListFileName guibg=#bcbcff guifg=#3030d0 gui=bold
"highlight MyTagListTitle guifg=#44aa44 gui=bold
"
