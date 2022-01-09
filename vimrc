"----------------------------------------------------------------------------"
" Details here: https://vimhelp.org/options.txt.html
" Edited: 09.01.2022
"----------------------------------------------------------------------------"
set nocompatible

set encoding=utf-8
set fileformat=unix
set langmenu=ru_RU.UTF-8
set fileencodings=utf-8,cp1251,cp866,koi8-r
let $LANG='ru_RU'
set mouse=a
set noguipty "Make external commands work through a pipe instead of a pseudo-tty

set number
set showmode
set showcmd
set cmdheight=2
set laststatus=2
set nowrap                      "залом строки по границе окна

set expandtab                   "To insert a real tab use CTRL-V<Tab>
set softtabstop=2
set shiftwidth=4                "ширина сдвига строк по команде ">"
"set tabstop=8                  "по-умолчанию = 8
"set showtabline=2              "Всегда видна

set incsearch                   "Инкрементальный поиск (в процессе набора)
set hlsearch                    "Подсвечивание результатов поиска
nohlsearch

set splitright                  " Открываем вертикальные окна справа
set foldenable
set foldmethod=manual           "marker | indent | manual | expr | syntax | diff
set autoindent                  "автоотступ для новой строки
set smartindent                 "добавление отступов, когда необходимо
"set backspace=indent,eol,nostop "https://vimhelp.org/options.txt.html#%27backspace%27
" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start 
set whichwrap+=<,>,[,]
set keymodel=startsel  "Set 'selection','selectmode','mousemodel' and 'keymodel' for MS-Windows

set cursorcolumn
au WinEnter * set cursorcolumn
au WinLeave * set nocursorcolumn

set cursorline
au WinEnter * set cursorline
au WinLeave * set nocursorline

" Подсветка пробелов, табов и др. символов
set list
set listchars=tab:‣\ ,trail:·,precedes:«,extends:»
"set listchars=tab:‣\ ,trail:·,precedes:«,extends:»

" Подсветка вертикальной границы 80 символов
set textwidth=0
set cc=+2 " show the right border column on number = textwidth+1
set cc=80 " Когда textwidth=0, то маркера не видно, поэтому ставим число

filetype on                      "Vim filetype detection
filetype plugin on               "Vim plugins system
filetype plugin indent on

if has('win32')
  let g:vimrc_dir=$HOME . '\vimfiles\'
else
  let g:vimrc_dir=$HOME . '/.vim/'
endif

exec "source " . g:vimrc_dir . "_plug.vim"
exec "source " . g:vimrc_dir . "_func.vim"
exec "source " . g:vimrc_dir . "_keys.vim"

" Настройка строки статуса
set statusline=[%n]\ %<%f\ [%Y%R,%{&ff},%{&fenc}%W]\ %{FugitiveStatusline()}%=%m\ %03l/%03L\ [%03v\ %03b]

syntax enable
colorscheme bigovlight

" Загрузить, если есть, персональные настройки проекта
if filereadable(".vim")
  source .vim
endif

helptags ALL
" ====== help appendix ========

"set hidden
"set allowrevins
"set completeopt=menu         " чтоб сверху окном не хлопало

"set wildmenu          " Системное меню
"set wildmode=full
"set cpoptions-=<      "Disable the recognition of special key codes in <>
"set wildcharm=<C-Z>   
"map <F9> :emenu <C-Z>
