<#
.SYNOPSIS
    Installs the provided fonts.
.DESCRIPTION
    Installs all the provided fonts by default.  The FontName
    parameter can be used to pick a subset of fonts to install.
.EXAMPLE
    C:\PS> ./install.ps1
    Installs all the fonts located in the Git repository.
.EXAMPLE
    C:\PS> ./install.ps1 furamono-, hack-*
    Installs all the FuraMono and Hack fonts.
.EXAMPLE
    C:\PS> ./install.ps1 d* -WhatIf
    Shows which fonts would be installed without actually installing the fonts.
    Remove the "-WhatIf" to install the fonts.
#>
[CmdletBinding(SupportsShouldProcess)]
param(
    # Specifies the font name to install.  Default value will install all fonts.
    [Parameter(Position=0)]
    [string[]]
    $FontName = '*'
)

Start-Process powershell -ArgumentList ('$OSFonts=((New-Object -ComObject shell.application).NameSpace(0x14)); Get-ChildItem -Path {0} -Recurse | Foreach-Object {{$OSFonts.CopyHere($_.FullName)}}' -f ($PSScriptRoot + '\' + $FontName + '.[ot]tf')) -WindowStyle Hidden -Wait -Verb RunAs

git submodule update --init
vim -c make_helptags.vim -c q

## Предыдущая версия предполагала использование модуля VimPlug. Сейчас она уже
## не используется. Текст ниже оставлен просто для примера, как при помощи
## скрипта PowerShell можно скачать из Интернета файл:
##
#md ~\vim-packs
#md ~\vimfiles\autoload
#$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#(New-Object Net.WebClient).DownloadFile(
#  $uri,
#  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
#    "~\vimfiles\autoload\plug.vim"
#  )
#)

