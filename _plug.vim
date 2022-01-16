" =============================================================================
" Настройка плагинов
"
" Установка всех плагинов:
"   git submodule update --init
"
" Обновление всех плагинов:
"   git submodule foreach git pull origin master
" =============================================================================

" -----------------------------------------------------------------------------
"  useful to line up text
"  git://github.com/godlygeek/tabular.git
" -----------------------------------------------------------------------------
packadd tabular

" -----------------------------------------------------------------------------
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
" git submodule add https://github.com/chrisbra/matchit.git
" -----------------------------------------------------------------------------
if has('syntax') && has('eval')
  packadd! matchit
endif

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
" git submodule add --depth=1 https://github.com/plasticboy/vim-markdown.git
" -----------------------------------------------------------------------------
packadd vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'csharp=cs']
let g:vim_markdown_autowrite = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_auto_extension_ext = 'md'
set conceallevel=2
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_anchorexpr = "'---'.v:anchor.'---'"

" -----------------------------------------------------------------------------
" Автоматическое определение и подсветка синтаксиса файлов GLSL шейдеров
" -----------------------------------------------------------------------------
packadd glsl.vim

" -----------------------------------------------------------------------------
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
" https://github.com/ctrlpvim/ctrlp.vim.git
"
" Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode
" Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode
" Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time
" -----------------------------------------------------------------------------
packadd ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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

"------------------------------------------------------------------------------
" allows to use <Tab> for all insert completion needs (:help ins-completion)
" git submodule add --depth=1 https://github.com/ervandew/supertab.git
" :help supertab
"------------------------------------------------------------------------------
packadd supertab

"------------------------------------------------------------------------------
" Path navigator designed to work with Vim's built-in mechanisms
" and complementary plugins.
" https://github.com/justinmk/vim-dirvish.git
"
" Вызов списка файлов по-умолчанию производится нажатием '-'
"------------------------------------------------------------------------------
packadd vim-dirvish

"------------------------------------------------------------------------------
" https://github.com/preservim/tagbar.git
"------------------------------------------------------------------------------
packadd tagbar

" -----------------------------------------------------------------------------
" Дополнения для подсветки синтаксиса C/C++ исходных файлов
" url = https://github.com/bfrg/vim-cpp-modern.git
" -----------------------------------------------------------------------------
packadd vim-cpp-modern

"------------------------------------------------------------------------------
" SHOULD BE USED
"------------------------------------------------------------------------------
" Фоновая проверка синтаксиса: https://github.com/dense-analysis/ale
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Плагин отображения имен файлов открытых буферов в зоне tabline
" url = https://github.com/mg979/vim-xtabline.git
" XTabline theme
" -----------------------------------------------------------------------------
"XTFill       - цвет панели
"XTSelect     - активная вкладка
"XTSelectMod  - индикатор изменения
"XTNumSel     - номер активной вкладки
"XTHidden     - неактивная вкладка
"XTHiddenMod  - индикатор изменения
"XTNum номер  - неактивной вкладки
"XTExtra      - текущий режим
"XTExtraMod
"XTCorner     - название текущей папки
"XTVisibleMod - несохраненные изменения (*)
"XTVisible    - неактивное окно
"XTSpecial    - специальные окна (NerdTree...)
"------------------------------------------------------------------------------
"packadd vim-xtabline
"let g:xtabline_settings.tab_number_in_left_corner = 1
":silent! XTabMode buffers

" -----------------------------------------------------------------------------
"  https://github.com/urbainvaes/vim-macaw.git
" Интерактивное изменение цветов подсветки синтаксиса
" Вызов поизводится сочтанием |yc|
" переключение Fg/Bg - клавиша B
" Выход q
" После выхода можно записать строку в открытый файл командой :MacawWrite
" -----------------------------------------------------------------------------
"packadd vim-macaw

