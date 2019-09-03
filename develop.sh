#!/bin/bash
if [ $1 == "gulp" ]; then
	cd /var/www/html/lib/lazfact-0.0.0
	gulp watch

fi
if [ $1 == "node" ]; then
	cd /home/naotaka/.aws/solutions/node
	node app.js
fi
if [ $1 == "lazfact" ]; then
	cd /var/www/html/lib/lazfact-0.0.0/src
	vim
fi
if [ $1 == "doc" ]; then
	cd /var/www/html/lib/lazfact-0.0.0/
	vim api.md
fi
