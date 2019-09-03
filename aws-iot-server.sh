sudo apt-get update
sudo apt-get upgrade
# timezone
sudo timedatectl set-timezone Asia/Tokyo

# vim
git clone git://github.com/NaotakaSaito/myDotfiles
sh myDotFiles/viminstall.sh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install v10
nvm use 10
npm i node-red
cp myDotFiles/.bash_aliases ~/
echo "alias node-red='node --max-old-space-size=128 node_modules/node-red/red.js'" >> ~/.bash_aliases
echo '[Unit]\
After=network-online.target\
Documentation=http://nodered.org/\
\
[Service]\
Environment="NODE_OPTIONS=--max-old-space-size=128"\
#Environment="NODE_RED_OPTIONS=-v"\
EnvironmentFile=/home/ubuntu/pi.conf\
ExecStart=/home/ubuntu/.nvm/versions/node/v10.16.2/bin/node $NODE_OPTIONS /home/ubuntu/node_modules/node-red/red.js $NODE_RED_OPTIONS\
WorkingDirectory=/home/ubuntu/.node-red/\
User=ubuntu\
Group=ubuntu\
Nice=10\
SyslogIdentifier=Node-RED\
StandardOutput=syslog\
Restart=on-failure\
KillSignal=SIGINT\
\
[Install]\
WantedBy=network-online.target\
' >> /etc/systemd/system/nodered.service



#mosquitto
sudo add-apt-repository ppa:mosquitto-dev/mosquitto-ppa

sudo apt-get update


#Microsoft SQL
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-get update
