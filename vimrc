"----------------------------------------------------------------------------"
"
" Edited: 12.10.2019
"
"----------------------------------------------------------------------------"
"
set nocompatible
set number
syntax enable
set noguipty "Make external commands work through a pipe instead of a pseudo-tty
set encoding=utf-8
source $VIMRUNTIME/delmenu.vim " Удаление меню в кодировке cp1251 (Windows)
set langmenu=ru_RU.UTF-8
let $LANG='ru_RU'
set fileencodings=utf-8,cp1251,cp866,koi8-r
set fileformat=unix
set hidden
set mouse=a
set showmode

set showcmd
set allowrevins
set expandtab          " To insert a real tab use CTRL-V<Tab>
set tabstop=2
set shiftwidth=2       " ширина сдвига строк по команде ">"
set wrap               " залом строки по границе окна
set textwidth=0
set cc=+2 " show the right border column on number = textwidth+1
set cc=80 " Когда textwidth=0, то маркера не видно, поэтому ставим число
set cmdheight=2
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
filetype plugin indent on

if has('win32')
  let g:vimrc_dir=$HOME . '\vimfiles\'
else
  let g:vimrc_dir=$HOME . '/.vim/'
endif

exec "source " . g:vimrc_dir . "_mswin.vim"
exec "source " . g:vimrc_dir . "_funcs.vim"
exec "source " . g:vimrc_dir . "_keys.vim"
"exec "source " . g:vimrc_dir . "_plugs.vim"
exec "source " . g:vimrc_dir . "_plugins.vim"
exec "source " . g:vimrc_dir . "_colors.vim"

" Загрузить, если есть, персональные настройки проекта
if filereadable(".vim")
  source .vim
endif

" ====== help appendix ========

" Системное меню
"set wildmenu
"set wildmode=full
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"set cpoptions-=<      "Disable the recognition of special key codes in <>
"set wildcharm=<C-Z>
"map <F9> :emenu <C-Z>

