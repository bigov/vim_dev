"
" gvimrc
" last edit 12.04.2016
"
set antialias

" Если gVIM запущен под MS-Windows
if match($OS, "Windows") > -1
  " для MS-Windows
  set guifont=Consolas:h9:cRUSSIAN:qDRAFT
  set lines=70 columns=120
else
  " для Linux
  set guifont=DejaVu\ Sans\ Mono\ 9
  set lines=75 columns=135
endif

"set guioptions-=T
"set guitabtooltip=1
set lines=75 columns=135

