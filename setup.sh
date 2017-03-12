#!/bin/sh
#sudo apt-get update
#sudo apt-get upgrade
sudo apt-get install vim vim-gnome jfbterm uim uim-anthy ctags

cd ~
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim

cp .bash_aliases .vimrc ~/
mkdir -p ~/.vim/rc
cp  dein.toml  dein_lazy.toml ~/.vim/rc/

