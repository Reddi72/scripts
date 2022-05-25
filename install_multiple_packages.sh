#!/bin/bash
#Author; prasad
#purpose;install multiple packages

<< comm1
if [[ $(id -u) -ne 0 ]]
then
	echo "please run from root user or with root previlage"
	exit 1
fi

if which vim &>/dev/null
then
	echo "alredy vim is installed"
else
	echo "installing vim....."
	yum install vim -y &>/dev/null
if [[ $? -eq 0 ]]
then
	echo "sucessfully installed vim pkg"
else
	echo "unable to install vim pkg"
fi
fi
comm1

echo "by useing loop installing multiple packages"

for each_pkg in vim httpd nginx
do if which $each_pkg &>/dev/null
then
	echo "already $each_pkg is instlled"
else
	echo "installing $each_pkg........."
	yum install  $each_pkg -y &>/dev/null
	if [[ $? -eq 0 ]]
then
        echo "sucessfully installed $each_pkg pkg"
else
        echo "unable to install $each_pkg pkg"
fi
fi
done
