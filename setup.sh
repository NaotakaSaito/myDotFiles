#!/bin/sh
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim ruby1.9.3 jfbterm uim uim-anthy samba xrdp
cp -r .bashrc .vim .vimrc .viminfo ~/
sudo cp smb.conf /etc/samba/
sudo service samba restart

