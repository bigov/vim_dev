" =============================================================================
" Настройка плагинов
" =============================================================================

call plug#begin('~/vim-packs') " Specify a directory for plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'maralla/completor.vim'
Plug 'derekwyatt/vim-fswitch' "[F4] перекл. между определениями и объявлениями
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'Valloric/YouCompleteMe'

" Initialize plugin system
call plug#end()

" Настройка AIRLINE плагина
" ----------------------------------------------------------
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Проверка синтаксиса при помощи плагина syntastic
" ----------------------------------------------------------
" https://github.com/vim-syntastic/syntastic
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

" Для переключения между файлами определений и объявлений по [F4]
" ----------------------------------------------------------
" https://github.com/derekwyatt/vim-fswitch.git

" Плагин автодополнение
" ----------------------------------------------------------
"https://github.com/maralla/completor.vim.git
let g:completor_clang_binary = 'clang'
let g:completor_auto_trigger = 0
let g:completor_auto_trigger = 0
"let g:completor_complete_options = 'menuone,noselect,preview'
let g:completor_complete_options = 'menuone,noselect'
let g:completor_def_split = 'vsplit'
" Дополнительная настройка использования клавиши Tab
"exec "source " . g:vimrc_dir . "_complete_by_tab.vim"

" OmniComplete для С++
" ----------------------------------------------------------
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

" Vim-markdown
" ----------------------------------------------------------
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['c++=cpp', 'viml=vim', 'bash=sh', 'ini=dosini', 'csharp=cs']
let g:vim_markdown_autowrite = 1

