setup.sh

setting of autostart
please copy the files to ~/.config/autostart
 x11vnc.desktop
 nodered.desktop

please copy modify /boot/config.txt

setup of x11vnc
   x11vnc -storepasswd


setup of static ip address of eth0
	change /etc/dhcpcd.conf like same file name in this folder.

setup of ssh
   ssh-keygen -t rsa
