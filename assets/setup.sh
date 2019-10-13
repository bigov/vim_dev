#!/bin/sh
mkdir ~/vim-packs
git clone https://github.com/junegunn/vim-plug.git ~/vim-packs/vim-plug
vim -c PlugInstall

