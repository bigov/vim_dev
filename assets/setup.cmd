@ECHO OFF
SET "PDIR=%USERPROFILE%\vim-packs"
IF NOT EXIST %PDIR% mkdir %PDIR%
git clone https://github.com/junegunn/vim-plug.git %PDIR%/vim-plug
copy /Y %PDIR%\vim-plug\plug.vim ..\autoload\
powershell -c .\install_font.ps1
vim -c PlugInstall
ECHO .
ECHO completed!
pause
