"
" Настройка аккордов
" ==================

" Чтоб не было задержки при восстановлении в режиме вставки
inoremap <C-o>u <C-o>u

" Используемая для вставки в MS-Windows комбинация Ctrl+V в редакторе Vim
" по-умолчанию назначена на операцию выделения вертикального блока. Но
" при желании ее можно переназначить для вставки -
"ino <C-v> <Esc> "+gPa
"no  <C-v> "+gP

"[F2] - сохранить содержимое из текущего буфера в файл
ino <F2> <Esc>:write<cr>a
map <F2> :write<cr>

"[F3] - открыть файл
ino <F3> <c-o>:Explore<cr>
map <F3> :Explore<cr>

"[F4] Переключени между файлами определений и объявлений
nn <F4> :FSHere<cr>
ino <F4> <c-o>:FSHere<cr>

"[F5] Выполнить файл как скрипт
nn <F5> :so%<cr>
ino <F5> <c-o>:w<cr><c-o>:so%<cr>

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

"no <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extras=+fq
"nn <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extras=+fq

" Переключение буфера (in gui)
map <c-PageDown> :bn<cr>
map <c-PageUp> :bp<cr>
imap <c-PageDown> <c-o>:bn<cr>
imap <c-PageUp> <c-o>:bp<cr>
" В терминале <Ctrl> не срабатывает, поэтому используем -
map gn :bn<cr>
map gp :bp<cr>
map gd :TagbarClose<cr> :bd<cr>

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
