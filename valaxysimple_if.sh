#!/bin/bash
if which httpd &> /dev/null
then 
	echo "httpd is present on this host"
	systemctl status httpd
	echo " now starting httpd"
	sudo systemctl start httpd
fi

