#!/bin/bash
 echo " checking file excute permissions........."

# [[ -x  install_multiple_packages.sh   ]] && echo "this file have excute permissions" || echo "this file  haven't excute permissions"


<< comm
if [[ -x  install_multiple_packages.sh  ]]
then
	 echo "this file have excute permissions"
 else
	  echo "this file  haven't excute permissions"
fi

for each in install_multiple_packages.sh  handle_cmndline_arguments_with_for_loop.sh 
do
	if [[ -x $each ]]
	then
		 echo "this file have excute permissions"
	 else
		 echo "this file  haven't excute permissions"
	fi
done
comm

<< comm2
for each in $(ls)
	do
        if [[ -x $each ]]
        then
                 echo "this file have excute permissions"
         else
                 echo "this file  haven't excute permissions"
        fi
done
comm2

given_path=$1
for each in $(ls $given_path)
        do
        if [[ -x $each ]]
        then
                 echo "this file have excute permissions"
         else
                 echo "this file  haven't excute permissions"
        fi
done



