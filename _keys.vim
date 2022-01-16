"
" Настройка аккордов
" ==================
" Переход в режим вставки
nn ш i
nn Ш I
nn ф a
nn Ф A
" Вставка из буфера
nn з p
nn З P
" Удаление
nn В D
nn ч x

" Чтоб не было задержки при восстановлении в режиме вставки
inoremap <C-o>u <C-o>u

" Переключение буфера
map <Leader>n :w<cr>:bn<cr>
map <Leader>p :w<cr>:bp<cr>
map <Leader>d :bd!<cr>

" Open Terminal
map <Leader>t :terminal<cr>

"[F2] (<Ctrl>+S) - сохранить содержимое из текущего буфера в файл
ino <F2> <Esc>:write<cr>a
ino <C-S> <Esc>:write<cr>a
map <F2> :write<cr>
map <C-S> :write<cr>

"[F3] Execute current file as vim-script
nn <F3> :so%<cr>
ino <F3> <c-o>:w<cr><c-o>:so%<cr>

"[F4] Переключени между файлами определений и объявлений
nn <F4> :FSHere<cr>
ino <F4> <c-o>:FSHere<cr>

"[F6] Dialog for open new file
ino <F6> <c-o>:Explore<cr>
map <F6> :Explore<cr>

"[F8] - включить/выключить панель навигации по коду
no <F8> :TagbarToggle<cr>
nn <F8> :TagbarToggle<cr>
ino <F8> <c-o>:TagbarToggle<cr>

"[Ctrl-F8] - выключить выделение
no <C-F8> :nohlsearch<cr>
nn <C-F8> :nohlsearch<cr>
ino <C-F8> <c-o>:nohlsearch<cr>

"[F10] - выход
no <F10> :qa<cr>
nn <F10> :qa<cr>
ino <F10> <c-o>:qa<cr>

no <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extras=+fq
nn <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extras=+fq

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" SHIFT-Insert are Paste
map <S-Insert> "+gP
cmap <S-Insert> <C-R>+

" Используемая для вставки в MS-Windows комбинация Ctrl+V в редакторе Vim
" по-умолчанию назначена на операцию выделения вертикального блока. Но
" при желании ее можно переназначить для вставки:
"ino <C-v> <Esc> "+gPa
"no  <C-v> "+gP

"[*] Подсветка выделения
nn * *N
vno * y :execute ":let @/=@\""<cr> :execute "set hlsearch"<cr>

"[F9] - Если Vim открыл файл не в той кодировке
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r ++ff=unix<CR>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.cp866 :e ++enc=cp866 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>
map <F9> :emenu Encoding.<TAB>

