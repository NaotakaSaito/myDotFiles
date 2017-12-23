#!/bin/sh
HOMEDIR=$(pwd)
echo $HOMEDIR
sudo apt-get update
sudo apt-get upgrade -y

cd $HOMEDIR
cp ./.bash_aliases_aws ~/.bash_aliases
cp ./.vimrc_aws ~/.vimrc

