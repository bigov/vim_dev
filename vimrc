"----------------------------------------------------------------------------"
"
" Edited: 28.10.2018
"
"----------------------------------------------------------------------------"

set nocompatible
" Location for swap files
set directory^=$HOME/.vim/swap//

set cursorline
set number
syntax enable
set noguipty "Make external commands work through a pipe instead of a pseudo-tty

set encoding=utf-8
"set langmenu=ru_RU.UTF-8
let $LANG='ru_RU'

set fileencodings=utf-8,cp1251,cp866,koi8-r
set fileformat=unix
set hidden
set mouse=a
set showmode

" Системное меню
set wildmenu
set wildmode=full
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set cpoptions-=<      "Disable the recognition of special key codes in <>
set wildcharm=<C-Z>
map <F9> :emenu <C-Z>

set showcmd
set allowrevins
set expandtab          " To insert a real tab use CTRL-V<Tab>
set tabstop=2
set shiftwidth=2       " ширина сдвига строк по команде ">"
set wrap               " залом строки по границе окна
set textwidth=0
set laststatus=2
set backspace=2
set incsearch          " Инкрементальный поиск (в процессе набора)
set hlsearch           " Подсвечивание результатов поиска
nohlsearch
set foldenable
set foldmethod=manual  "marker | indent | manual | expr | syntax | diff
set autoindent               " автоотступ для новой строки
set smartindent              " добавление отступов, когда необходимо
set completeopt=menu         " чтоб сверху окном не хлопало
set splitright               " Открываем вертикальные окна справа

filetype on                  " Vim filetype   detection
filetype plugin on           " Vim plugins system

set list " Подсветка " " пробелов и "  " табов
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»

if match($OS, "Windows") > -1
  let g:vimrc_dir=$HOME . '\vimfiles\'
else
  let g:vimrc_dir=$HOME . '/.vim/'
endif

if match(system('uname'), "MSYS_NT") > -1
  let g:vimrc_dir = $HOME . '/.vim/'
endif

if match(system('uname'), "MINGW64_NT") > -1
  let g:vimrc_dir = $HOME . '/.vim/'
endif

exec "source " . g:vimrc_dir . "_mswin.vim"
exec "source " . g:vimrc_dir . "_funcs.vim"
exec "source " . g:vimrc_dir . "_keys.vim"
exec "source " . g:vimrc_dir . "_plugs.vim"

"if &term == "linux"
"  exec "source " . g:vimrc_dir . "_colors_d.vim"
"elseif &term == "xterm-256color"
"  exec "source " . g:vimrc_dir . "_colors_d.vim"
"else
"  exec "source " . g:vimrc_dir . "_colors_l.vim"
"endif
colorscheme blue

" Загрузить, если есть, персональные настройки проекта
if filereadable(".vim")
  source .vim
endif
