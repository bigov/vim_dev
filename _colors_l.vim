"
" Colorscheme tuning
"
set t_Co=256
"colorscheme default
"colorscheme lucius
"LuciusDarkHighContrast

set cc=+2 " show the right border column on number = textwidth+1
set cc=80 " Когда textwidth=0, то маркера не видно, поэтому ставим число

" Подсветка текста, который дальше границы 79
"match PreProc /\%>79v.\+/ " text color for border column = Preproc

set cmdheight=2
set statusline=[%n]\ %<%f\ [%Y%R,%{&ff},%{&fenc}%W]%=%m\ %03l/%03L\ [%03v\ %03b]

"set background=light

let color0 = "#e5ffe5"
let color1 = "#6296C0"
let color2 = "#a8a8a8"
highlight Constant guifg=#3333bb

" Подсветка пробелов и табов
highlight SpecialKey guifg=#bbbbff ctermfg=252

exec "highlight CursorLine cterm=NONE ctermbg=254 guifg=NONE guibg=".color0
exec "highlight ColorColumn ctermbg=254 guibg=".color0
exec "highlight Comment ctermfg=248  guifg=".color2
exec "highlight LineNr ctermfg=242 ctermbg=7 guifg=".color2
exec "highlight CursorLineNr ctermfg=0 ctermbg=7 cterm=bold guibg=".color0.
   \" guifg=".color2
exec "highlight StatusLine ctermfg=242 ctermbg=15 guifg=".color1
exec "highlight StatusLineNC ctermfg=250 ctermbg=8 guifg=".color1
exec "highlight VertSplit guifg=".color1

highlight Pmenu guibg=#99ff99 guifg=#222222
highlight PmenuSel guibg=#ffff88 guifg=#444444 gui=bold
highlight Normal ctermbg=15 guibg=#ffffff
highlight TabLineFill ctermfg=242
highlight TabLine cterm=NONE ctermbg=250

" Подсветка в окне тегов (открывается по F8)
highlight MyTagListFileName guibg=#bcbcff guifg=#3030d0 gui=bold
highlight MyTagListTitle guifg=#44aa44 gui=bold
"    MyTagListTagName  - Used for tag names
"    MyTagListTagScope - Used for tag scope
"    MyTagListTitle    - Used for tag titles
"    MyTagListComment  - Used for comments
"    MyTagListFileName - Used for filenames
