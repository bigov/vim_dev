"=============================================================================
"
" Вспомогательные функции для работы от 04.01.2022
"
"=============================================================================

" Файлы конфигов Вима делать только в формате unix
au BufRead,BufNewFile *.vim setlocal ff=unix

" Автоматическое назначение формата и кодировки для пакетных файлов MS-Windows
au BufRead,BufNewFile *.\(cmd\|bat\) silent exec 'e ++enc=cp866 %' | setlocal ff=dos

""[TAB] авто-дополнение для текущего активного синтаксиса
"function! InsertTabWrapper(direction)
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        "return "\<tab>"
"        return "\<c-n>"
"    elseif "backward" == a:direction
"        return "\<c-p>"
"    else
"        return "\<c-n>"
"    endif
"endfunction

" Подсветка всех слов, равных слову под/перед курсором 
nnoremap <C-S> :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

function! AutoHighlightOn()
  augroup auto_highlight
  au!
  au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
  augroup end
  setl updatetime=500
  echo 'Highlight current word: ON'
  return 1
endfunction

" Поиск во всех файлах проекта с подсветкой найденного
command! GrepWordInFiles :call s:GrepInFiles()
function! s:GrepInFiles()
    let s:ext = expand(«%:e»)
    if s:ext == «cpp» || s:ext == «c» || s:ext == «h» || s:ext == «ino»
        let s:mask = «*.h *.c *.cpp **/*.h **/*.c **/*.cpp **/*.ino»
    else
        let s:mask = «*» . (s:ext == «» ? «» : ".") . s:ext . " **/*" .
          \ (s:ext == «» ? «» : ".") . s:ext
    endif

    let s:word = expand(«<cword>»)
    execute «silent! noa vim! /\\<» . s:word . «\\>/gj » . s:mask | copen
endfunction

" Команда для отображение настроек текущей цветовой схемы
command! ShowCurrentColors :call s:ShowCurrentColors()
function! s:ShowCurrentColors()
  highlight "8:SpecialKey,@:NonText,d:Directory,e:ErrorMsg,i:IncSearch,
    \l:Search,m:MoreMsg,M:ModeMsg,n:LineNr,r:Question,s:StatusLine,
    \S:StatusLineNC,c:VertSplit,t:Title,v:Visual,w:WarningMsg,W:WildMenu,
    \f:Folded,F:FoldColumn,A:DiffAdd,C:DiffChange,D:DiffDelete,T:DiffText,
    \>:SignColumn,B:SpellBad,P:SpellCap,R:SpellRare,L:SpellLocal,-:Conceal,
    \+:Pmenu,=:PmenuSel,x:PmenuSbar,X:PmenuThumb"
endfunction

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

