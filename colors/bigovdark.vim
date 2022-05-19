" -----------------------------------------------------------------------------
" Vim colors file - local syntax file - set colors
" Last Change: 27.04.2022
" -----------------------------------------------------------------------------

let g:colors_name="bigovdark"

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

if has('gui_running') || (has('termguicolors') && &termguicolors)
  let s:M        = 'gui'
  let s:White    = '#FFFFFF'
  let s:FgNormal = '#D0D0D0'
  let s:FgMuted1 = '#8A8A8A'
  let s:FgMuted2 = '#444444'
  let s:Blue     = '#00005F'
  let s:BgNormal = '#000000'
  let s:BgLight1 = '#080808'
  let s:BgLight2 = '#1C1C1C'
  let s:Green1   = '#00BB00'
  let s:Ink      = '#AF87FF'
  let s:Yellow   = '#FCFF87'
else
  set t_Co=256
  let s:M        = 'cterm'
  let s:White    = '15'
  let s:FgNormal = '252'
  let s:FgMuted1 = '245'
  let s:FgMuted2 = '240'
  let s:Blue     = '17'
  let s:BgNormal = '0'
  let s:BgLight1 = '232'
  let s:BgLight2 = '234'
  let s:Green1   = '2'
  let s:Ink      = '141'
  let s:Yellow   = '228'
endif
"====================================================================================================================================

let s:BoldNormal   =                          s:M.'bg='.s:BgNormal.' '.s:M."=bold".' '."term=bold"
let s:__Light1     =                          s:M.'bg='.s:BgLight1
let s:__Light2     =                          s:M.'bg='.s:BgLight2.' '.s:M."=NONE"
let s:WhiteBlack   = s:M.'fg='.s:FgNormal.' '.s:M.'bg='.s:BgNormal.' '.s:M."=NONE"
let s:Muted1__     = s:M.'fg='.s:FgMuted1
let s:Muted2__     = s:M.'fg='.s:FgMuted2
let s:Muted2Light0 = s:M.'fg='.s:FgMuted2.' '.s:M.'bg='.s:BgLight1
let s:__Blue       =                          s:M.'bg='.s:Blue
let s:Ink__        = s:M.'fg='.s:Ink
let s:Yellow__     = s:M.'fg='.s:Yellow
let s:YellowLight2 = s:M.'fg='.s:Yellow.' '.  s:M.'bg='.s:BgLight2
let s:WhiteBold    = s:M.'fg='.s:White.' '.                            s:M."=bold"

exe 'hi Normal           '.s:WhiteBlack
exe 'hi NonText          '.s:YellowLight2
exe 'hi CursorColumn     '.s:__Light2
exe 'hi CursorLine       '.s:__Light2
exe 'hi Comment          '.s:Muted1__
exe 'hi LineNr           '.s:Muted2Light0
exe 'hi CursorLineNr     '.s:WhiteBlack
exe 'hi ColorColumn      '.s:__Light1
exe 'hi String           '.s:Ink__
exe 'hi VimCommand       '.s:Yellow__
exe 'hi VimCommentTitle  '.s:WhiteBold
exe 'hi ExtraWhitespace  '.s:Muted2__


" highlight trailing spaces
au BufNewFile,BufRead * let b:mtrailingws=matchadd('LineNr', '\s\+$', -1)
" highlight tabs between spaces
au BufNewFile,BufRead * let b:mtabbeforesp=matchadd('LineNr', '\v(\t+)\ze( +)', -1)
au BufNewFile,BufRead * let b:mtabaftersp=matchadd('LineNr', '\v( +)\zs(\t+)', -1)
" disable matches in help buffers
au BufEnter,FileType help call clearmatches()

