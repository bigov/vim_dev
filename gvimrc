"
" gvimrc
" last edit 12.04.2016
"
set antialias

" Если gVIM запущен под MS-Windows
if match($OS, "Windows") > -1
  set guifont=DejaVu_Sans_Mono:h9:cRUSSIAN:qDRAFT
else
  set guifont=DejaVu\ Sans\ Mono\ 9
endif

"set guioptions-=T
"set guitabtooltip=1
set lines=75 columns=135

