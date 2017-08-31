#!/bin/sh
HOMEDIR=$(pwd)
echo $HOMEDIR
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y vim vim-gtk fonts-ipafont ttf-kochi-gothic xfonts-intl-japanese xfonts-intl-japanese-big xfont-kaname uim uim-anthy ctags obconf x11vnc node-gyp npm

mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim

cd $HOMEDIR
cp .bash_aliases .vimrc ~/
mkdir -p ~/.vim/rc
cp  dein.toml  dein_lazy.toml ~/.vim/rc/

