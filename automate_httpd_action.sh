#!/bin/bash
#auhor : prasad
# automating httpd actions like ; start stop restart status
<< comm1
user_id = $(id -u)
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

if [[ $user_id -ne 0 ]]
then
	 echo " you are  not root user to  run this shell script"
fi


read -p " enter your action for  httpd: " user_action
#user_action=$1

<< comm4
if [[ $user_action == "start" ]]
then
        echo "starting httpd......."
        systemctl status httpd &> /dev/null || systemctl start httpd
fi

if [[ $user_action == "stop" ]]
then
        echo "stoping httpd......."
        systemctl status httpd &> /dev/null || systemctl stop httpd
fi

if [[ $user_action == "restart" ]]
then
        echo "restarting httpd......."
        systemctl status httpd &> /dev/null || systemctl restart httpd
fi

if [[ $user_action == "status" ]]
        then
        echo "status of  httpd......."
        systemctl status httpd
fi
comm4

<< comm5
if [[ $user_action == "start" ]]
then
	 echo "starting httpd......."
        systemctl status httpd &> /dev/null || systemctl start httpd
elif [[ $user_action == "stop" ]]
then
	 echo "stoping httpd......."
        systemctl status httpd &> /dev/null && systemctl stop httpd
elif [[ $user_action == "restart" ]]
then
         echo "restarting httpd......."
         systemctl restart httpd
elif [[ $user_action == "status" ]]
then
         echo "getting status of httpd......."
         systemctl status  httpd
 else
	 echo "your action is invalid "
	 echo " valid actions are start|stop|restart|status"
	 
fi
comm5

 echo "your action is invalid "
         echo " valid actions are start|stop|restart|status"
case $user_action in

	start)
		 echo "starting httpd......."
		 systemctl status httpd &> /dev/null || systemctl start httpd
		 ;;
	 stop)
	  	 echo "stoping httpd......."
                 systemctl status httpd &> /dev/null && systemctl stop httpd
                 ;;
        restart)
		echo "restarting httpd......."
		systemctl restart  httpd
		;;
	status)
		echo "finding the status"
		systemctl status httpd
		;;
	*)
	         echo "your action is invalid "
                 echo " valid actions are start|stop|restart|status"
 esac



	





