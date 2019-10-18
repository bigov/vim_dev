#!/bin/sh
./install_font.sh
mkdir ~/vim-packs
git clone https://github.com/junegunn/vim-plug.git ~/vim-packs/vim-plug
cp -f ~/vim-packs/vim-plug/plug.vim ~/.vim/autoload/
vim -c PlugInstall

