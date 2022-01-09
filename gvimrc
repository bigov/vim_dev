"----------------------------------------------------------------------------"
"
" Edited: 09.01.2022
"
"----------------------------------------------------------------------------"

set antialias
"set guioptions-=T  "По-умолчанию: egmrLtT

" For CTRL-V to work autoselect must be off.
" On Unix we have two selections, autoselect can be used.
if !has("unix")
  set guioptions-=a
endif

set lines=64
set columns=132

if has('win32')
  set guifont=DejaVu_Sans_Mono_for_Powerline:h9:cRUSSIAN:qDRAFT
else
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
endif

