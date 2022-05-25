#!/bin/bash
#auhor : prasad
# automating httpd actions like ; start stop restart status
user_id = $(id -u)

<< comm1
[[ $user_id -eq 0 ]] && echo " you are root user so u can run this shell script" || echo " you are not the root user to run this shell script "
comm1

<< comm2
if [[ $user_id -eq 0 ]]
then
	echo " you are root user so u can run this shell script"
else
	echo " you are  not root user to  run this shell script"
fi
comm2

<< comm3
if [[ $user_id -ne 0 ]]
then
	echo " you are  not root user to  run this shell script"
fi
comm3

read -p " enter your action for  httpd: " user_action

if [[ $user_action == "start" ]]
then 
	echo "starting httpd......."
	systemctl status httpd &> /dev/null || systemctl start httpd
fi

if [[ $user_action == "stop" ]]
then
	echo "stoping httpd......."
        systemctl status httpd &> /dev/null && systemctl stop httpd
fi

if [[ $user_action == "restart" ]]
then
        echo "restarting httpd......."
        systemctl status httpd &> /dev/null || systemctl restart httpd
fi

if [[ $user_action == "status" ]]
	then
        echo "restarting httpd......."
        systemctl status httpd
fi




