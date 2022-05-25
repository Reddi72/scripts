#!/bin/bash
clear
read -p "enter your first number:" a
read -p "enter your second number:" b
echo "1.add"
echo "2.sub"
echo "3.mul"
echo "4.div"
read -p "please select your option from above menu:" opt
case $opt in
	   1)
		   echo "your selected addition"
		   echo "the addition of $a and $b is: $((a+b))"
		   ;;
	   2)
		   echo "your selected sub"
		   echo "the sub of $a and $b is: $((a-b))"
		   ;;
	   3)
		   echo "your selected mul"
		   echo "the mul of $a and $b is: $((a*b))"
		   ;;
	   4)
		   echo "your selected div"
		   echo "the div of $a and $b is: $((a/b))"
		   ;;
	   *)
	           echo "you selected invalid option"
		   ;;
   esac

	 
