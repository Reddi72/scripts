#!/bin/bash
echo " what is your first name"
read a
echo "what is your second name"
read b
echo "thanks for saying your name $a$b"
echo " are u miss me say yes or no"
read c
if  [ $c == "yes" ]
then
	echo " miss you too "
else
  	echo " good bye"	
fi
