" -----------------------------------------------------------------------------
" Vim colors file - local syntax file - set colors
" Last Change: 09.01.2022
" -----------------------------------------------------------------------------

set background=light
"set termguicolors off

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bigovlight"

if has('gui_running') || (has('termguicolors') && &termguicolors) "GVIM mode
  let s:M = 'gui'
  let s:C00 = '#FFFFFF' "White БЕЛЫЙ TextError
  let s:C01 = '#242424' "Black ЧЕРНЫЙ
  let s:C02 = '#8F8F8F' "Gray СЕРЫЙ
  let s:C03 = '#AF00D7' "СИРЕНЕВЫЙ
  let s:C04 = '#1C86EE' "Blue СИНИЙ
  let s:C05 = '#FFFFD7' "LLemon СВЕТЛО-ЛИМОННЫЙ (линия курсора)
  let s:C06 = '#EEEEEE' "LGray СВЕТЛО-СЕРЫЙ
  let s:C07 = '#ADD8E6' "LBlue СВЕТЛО-ГОЛУБОЙ
  let s:C09 = '#008000' "ЗЕЛЕНЫЙ
  let s:C10 = '#000080' "DBlue ТЕМНО-СИНИЙ
  let s:C11 = '#FF0000' "Red КРАСНЫЙ
  let s:C12 = '#FFE844' "Gold
else "Console Vim
  set t_Co=256
  let s:M = 'cterm'
  let s:C00 = '15'
  let s:C01 = '235'
  let s:C02 = '240'
  let s:C03 = '128'
  let s:C04 = '26'
  let s:C05 = '230'
  let s:C06 = '255'
  let s:C07 = '117'
  let s:C09 = '28'
  let s:C10 = '18'
  let s:C11 = '9'
  let s:C12 = '220'
endif

let s:BlackBOnWhite = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01.' '.s:M.'=bold'
let s:BlackOnWhite  = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C01
let s:DBlueOnGold   = s:M.'bg='.s:C12.' '.s:M.'fg='.s:C10.' '.s:M.'=NONE'
let s:GoldOnBlue    = s:M.'bg='.s:C04.' '.s:M.'fg='.s:C12
let s:PanelCursor   = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00
let s:LBlueOn_      =                     s:M.'fg='.s:C07
let s:TextError     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C11
let s:TextGray      = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C02
let s:TextIdent     = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C03
let s:TextInclude   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C10.' '.s:M.'=bold'
let s:TextKeyword   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C10
let s:TextNumber    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C04.' '.s:M.'=bold'
let s:TextStorage   = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C03.' '.s:M.'=bold'
let s:TextString    = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C09.' '.s:M.'=bold'
let s:WhiteBOnBlue  = s:M.'bg='.s:C04.' '.s:M.'fg='.s:C00.' '.s:M.'=bold'
let s:WhiteBOnGray  = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00.' '.s:M.'=bold'
let s:WhiteOnGray   = s:M.'bg='.s:C02.' '.s:M.'fg='.s:C00.' '.s:M.'=NONE'
let s:WhiteOnLBlue  = s:M.'bg='.s:C07.' '.s:M.'fg='.s:C00.' '.s:M.'=NONE'
let s:WhiteOnWhite  = s:M.'bg='.s:C00.' '.s:M.'fg='.s:C00.' '.s:M.'=NONE'
let s:_OnLGray      = s:M.'bg='.s:C06
let s:_OnLLemon     = s:M.'bg='.s:C05.' '                    .s:M.'=NONE'

exe 'hi Boolean          '.s:TextNumber
exe 'hi Character        '.s:BlackOnWhite
exe 'hi ColorColumn      '.s:_OnLGray
exe 'hi Comment          '.s:TextGray
"exe 'hi Conceal
exe 'hi Conditional      '.s:TextInclude
exe 'hi Constant         '.s:TextNumber
exe 'hi Cursor           '.s:PanelCursor
exe 'hi CursorColumn     '.s:_OnLLemon
exe 'hi CursorLine       '.s:_OnLLemon
exe 'hi CursorLineNr     '.s:DBlueOnGold
exe 'hi Debug            '.s:BlackOnWhite
exe 'hi Define           '.s:BlackBOnWhite
exe 'hi Delimiter        '.s:BlackOnWhite
exe 'hi DiffAdd          '.s:BlackOnWhite
exe 'hi DiffChange       '.s:BlackOnWhite
exe 'hi DiffDelete       '.s:TextKeyword
exe 'hi DiffText         '.s:BlackOnWhite
exe 'hi Directory        '.s:BlackOnWhite
exe 'hi EndOfBuffer      '.s:WhiteOnWhite
exe 'hi Error            '.s:TextError
"exe 'hi ErrorMsg
exe 'hi Exception        '.s:BlackOnWhite
exe 'hi Float            '.s:TextNumber
"exe 'hi FoldColumn
"exe 'hi Folded
exe 'hi Function         '.s:BlackBOnWhite
exe 'hi Identifier       '.s:TextIdent
exe 'hi Ignore           '.s:BlackOnWhite
"exe 'hi IncSearch
exe 'hi Include          '.s:TextInclude
exe 'hi Keyword          '.s:TextKeyword
exe 'hi Label            '.s:BlackOnWhite
exe 'hi LineNr           '.s:TextGray
exe 'hi Macro            '.s:TextInclude
exe 'hi MatchParen       '.s:DBlueOnGold
exe 'hi ModeMsg          '.s:BlackOnWhite
exe 'hi MoreMsg          '.s:BlackOnWhite
exe 'hi Normal           '.s:BlackOnWhite
exe 'hi Number           '.s:TextNumber
exe 'hi Operator         '.s:BlackOnWhite
exe 'hi Pmenu            '.s:WhiteOnLBlue
"exe 'hi PmenuSBar
exe 'hi PmenuSel         '.s:DBlueOnGold
"exe 'hi PmenuThumb
exe 'hi PreProc          '.s:TextKeyword
exe 'hi Precondit        '.s:BlackOnWhite
"exe 'hi Question
"exe 'hi QuickFixLine
exe 'hi Repeat           '.s:TextInclude
exe 'hi Search           '.s:WhiteBOnGray
exe 'hi SignColumn       '.s:TextGray
exe 'hi Special          '.s:BlackOnWhite
exe 'hi SpecialChar      '.s:BlackOnWhite
exe 'hi SpecialComment   '.s:TextGray
exe 'hi SpecialKey       '.s:LBlueOn_
"exe 'hi SpellBad
"exe 'hi SpellCap
"exe 'hi SpellLocal
"exe 'hi SpellRare
exe 'hi Statement        '.s:TextInclude
"exe 'hi StatusLine
exe 'hi StatusLineNC     '.s:WhiteOnLBlue
"exe 'hi StatusLineTermNC
"exe 'hi StatusLineTerm
exe 'hi StorageClass     '.s:TextStorage
exe 'hi String           '.s:TextString
exe 'hi Structure        '.s:TextInclude
exe 'hi TabLine          '.s:WhiteOnLBlue
exe 'hi TabLineSel       '.s:WhiteOnGray
exe 'hi Tag              '.s:BlackOnWhite
exe 'hi Title            '.s:BlackOnWhite
"exe 'hi Titled
exe 'hi Todo             '.s:BlackOnWhite
"exe 'hi ToolbarButton
"exe 'hi ToolbarLine
exe 'hi Type             '.s:TextInclude
exe 'hi Typedef          '.s:BlackBOnWhite
exe 'hi Underlined       '.s:BlackOnWhite
"exe 'hi VertSplit
exe 'hi Visual           '.s:GoldOnBlue
"exe 'hi VisualNOS
"exe 'hi WarningMsg
exe 'hi WildMenu         '.s:BlackOnWhite

syn match VimMarkdownAnchor /---[a-z0-9A-Z_\-]\{1,64}---/
hi VimMarkdownAnchor guifg=#DDDDDD guibg=#FFFFFF

