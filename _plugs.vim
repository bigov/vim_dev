"
" VIM plugins tuning
"
" Настройка OmniComplete для С++
" =============================================================================
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

" vim-fswitch
" =============================================================================
" https://github.com/derekwyatt/vim-fswitch.git
packadd vim-fswitch

" Проверка синтаксиса при помощи плагина syntastic
" =============================================================================
" https://github.com/scrooloose/syntastic.git
packadd syntastic
let g:syntastic_cpp_compiler="g++"
"let g:syntastic_cpp_compiler="clang"
let g:syntastic_cpp_compiler_options="-std=c++17"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Плагин автодополнение
" =============================================================================
"https://github.com/maralla/completor.vim.git
packadd completor
let g:completor_clang_binary = 'clang'
let g:completor_auto_trigger = 0

" Use TAB to complete when typing words, else inserts TABs as usual.  Uses
" dictionary, source files, and completor to find matching words to complete.

" Note: usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Use the Linux dictionary when spelling is in doubt.
function! Tab_Or_Complete() abort
  " If completor is already open the `tab` cycles through suggested completions.
  if pumvisible()
    return "\<C-N>"
  " If completor is not open and we are in the middle of typing a word then
  " `tab` opens completor menu.
  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-R>=completor#do('complete')\<CR>"
  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
    return "\<Tab>"
  endif
endfunction

" Use `tab` key to select completions.  Default is arrow keys.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab to trigger auto completion.  Default suggests completions as you type.
let g:completor_auto_trigger = 0
inoremap <expr> <Tab> Tab_Or_Complete()

"let g:completor_complete_options = 'menuone,noselect,preview'
let g:completor_complete_options = 'menuone,noselect'
let g:completor_def_split = 'vsplit'

" Tag-List
" =============================================================================
let g:Tlist_Use_Right_Window = 1

