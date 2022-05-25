#!/bin/bash
#author;prasad
#purpose;installing multiple pkgs
#write ur package with ./handle_cmndline_arguments_with_for_loop.sh
#exmple="handle_cmndline_arguments_with_for_loop.sh hhtpd"

if [[ $# -eq 0 ]]
then
	echo "usage: $0 pkg1 pkg2....."
	exit 1
fi


if [[ $(id -u) -ne 0 ]]
then 
	echo "please run from root user or with sudo previlage"
	exit 2
fi

for each_pkg in $@
do
	if which $each_pkg &>/dev/null
	then
		echo "alredy $each_pkg is installed"
	else
		echo "installing $each_pkg....."
		yum install $each_pkg -y &>/dev/null

		if [[ $? -eq 0 ]]
		then
			echo "successfully installed  $each_pkg pkg"
		else
			echo "unable to insatll  $each_pkg "
		fi
	fi
done

echo "write a package name with script"

