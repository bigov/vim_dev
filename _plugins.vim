" =============================================================================
" Настройка плагинов
"
" Установка всех плагинов:
"   git submodule update --init
"
" Обновление всех плагинов:
"   git submodule foreach git pull origin master
" =============================================================================

packadd tagbar
packadd tabular

" -----------------------------------------------------------------------------
" Проверка синтаксиса при помощи плагина syntastic
" https://github.com/vim-syntastic/syntastic
" -----------------------------------------------------------------------------
packadd syntastic
let g:syntastic_cpp_compiler="g++"
"let g:syntastic_cpp_compiler="clang"
let g:syntastic_cpp_compiler_options="-std=c++17"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" -----------------------------------------------------------------------------
" Для переключения между файлами определений и объявлений по [F4]
" https://github.com/derekwyatt/vim-fswitch.git
" -----------------------------------------------------------------------------
packadd vim-fswitch "[F4] перекл. между определениями и объявлениями

" -----------------------------------------------------------------------------
" Плагин автодополнение
"https://github.com/maralla/completor.vim.git
" -----------------------------------------------------------------------------
"packadd completor.vim
"let g:completor_python_binary = 'w:/exe/msys/mingw64/bin/python3.exe'
"let g:completor_clang_binary = 'clang'
"let g:completor_auto_trigger = 0
"let g:completor_auto_trigger = 0
"let g:completor_complete_options = 'menuone,noselect,preview'
"let g:completor_complete_options = 'menuone,noselect'
"let g:completor_def_split = 'vsplit'
" Дополнительная настройка использования клавиши Tab
"exec "source " . g:vimrc_dir . "_complete_by_tab.vim"

" -----------------------------------------------------------------------------
" OmniComplete для С++
" -----------------------------------------------------------------------------
set omnifunc=omni#cpp#complete#Main
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest

" -----------------------------------------------------------------------------
" Vim-markdown
" -----------------------------------------------------------------------------
packadd vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'csharp=cs']
let g:vim_markdown_autowrite = 1

" -----------------------------------------------------------------------------
" Автоматическое определение и подсветка синтаксиса файлов GLSL шейдеров
" -----------------------------------------------------------------------------
packadd glsl.vim

" -----------------------------------------------------------------------------
" Работа с системой контроля версий GIT
"
" Для установки -
"   git clone https://github.com/tpope/vim-fugitive.git
"   vim -u NONE -c "helptags vim-fugitive/doc" -c q
"
" Для отображения в строке статуса имени GIT-ветки
"   Add %{FugitiveStatusline()} to 'statusline'
" -----------------------------------------------------------------------------
packadd vim-fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

"******************************************************************************
" Vim-pathogen
" используется для подключения плагина Vim-airline, так как
" последний не подключается корректно через стандартную систему
" плагинов VIM
" -----------------------------------------------------------------------------
packadd vim-pathogen
execute pathogen#infect()

" -----------------------------------------------------------------------------
" Настройка AIRLINE плагина
" Не пишем 'packadd vim-airline', так как он подключен через Vim-pathogen
" и находится в отдельном каталоге: '$VIMRUNTIME$/bundle'
" -----------------------------------------------------------------------------
packadd vim-airline-themes
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" -----------------------------------------------------------------------------
" Интерактивное изменение цветов подсветки синтаксиса
" Вызов поизводится сочтанием |yc|
" переключение Fg/Bg - клавиша B
" Выход q
" После выхода можно записать строку в открытый файл командой :MacawWrite
" -----------------------------------------------------------------------------
packadd vim.macaw
