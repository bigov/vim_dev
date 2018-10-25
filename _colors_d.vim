"
" Colorscheme tuning
"
set t_Co=256 " Использовать 256-цветную палитру терминала

colorscheme industry

set cc=+2 " show the right border column on number = textwidth+1
set cc=80 " Когда textwidth=0, то маркера не видно, поэтому ставим число

" подсветка текста, выходящего за правую границу
"match PreProc /\%>79v.\+/ " text color for border column = Preproc

set cmdheight=2
set statusline=[%n]\ %<%f\ [%Y%R,%{&ff},%{&fenc}%W]%=%m\ %03l/%03L\ [%03v\ %03b]

set background=dark

"let color1 = "#6296C0"
"let color2 = "#a8a8a8"
"highlight Constant guifg=#3333bb

" Подсветка пробелов и табов
highlight SpecialKey ctermfg=238

highlight CursorLine cterm=NONE ctermbg=236
highlight ColorColumn ctermbg=236
highlight Comment ctermfg=darkgrey
highlight LineNr ctermfg=247 ctermbg=236
highlight CursorLineNr ctermfg=250 ctermbg=238 cterm=bold
"exec "highlight StatusLine ctermfg=242 ctermbg=15 guifg=".color1
"exec "highlight StatusLineNC ctermfg=250 ctermbg=8 guifg=".color1
highlight VertSplit ctermfg=248 ctermbg=0

highlight Pmenu ctermbg=darkgray ctermfg=white
highlight PmenuSel ctermbg=gray ctermfg=white cterm=bold
highlight Normal ctermbg=none ctermfg=none
"highlight TabLineFill ctermfg=242
"highlight TabLine cterm=NONE ctermbg=250
highlight Statement ctermfg=lightyellow
highlight cLabel ctermfg=cyan
highlight cType ctermfg=green
highlight cConstant ctermfg=magenta

highlight cNumber ctermfg=yellow
highlight cFloat ctermfg=yellow
highlight cOctal ctermfg=yellow

highlight cString ctermfg=lightblue
highlight cCppString ctermfg=lightblue
highlight cCharacter ctermfg=lightblue
highlight ccSpecialCharacter ctermfg=lightblue

