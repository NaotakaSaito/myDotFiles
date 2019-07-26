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
	vi
fi
