#!/bin/bash
#practice on &&,||,if, and ifelse statements on to verify httpd is installed or not, if it is installed then find version............
#author: prasad
#finding httpd version
<< comm
which httpd && echo " httpd is installed on this host "
which httpd &>/dev/null && echo " httpd is installed on this host "
if which httpd &>/dev/null
	then
		 echo " httpd is installed on this host "
fi

which httpd &>/dev/null
httpd_status=$?
if
	[[ httpd_statu -eq 0 ]]
then
	echo " httpd is installed on this host "
fi
comm

which httpd &>/dev/null && httpd -v|awk -F '[ /]' '/version/ {print $4}' && echo " httpd is installed on this host " || echo " httpd is not installed "

if which httpd &>/dev/null
        then
                 echo " httpd is installed on this host "
		  httpd -v|awk -F '[ /]' '/version/ {print $4}'
	 else
		 echo " httpd is not installed  on this host "
fi

which httpd &>/dev/null
httpd_status=$?
if
        [[ httpd_statu -eq 0 ]]
then
        echo " httpd is installed on this host "
	 httpd -v|awk -F '[ /]' '/version/ {print $4}'
else
	 echo " httpd is not installed  on this host "

fi


