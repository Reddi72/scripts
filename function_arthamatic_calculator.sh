#!/bin/bash
<< comm1
mycode()
{
read -p "enter your first number:" num1
read -p "enter your second number:" num2
}
comm1
clear
echo "welcome to arthamatic calculator"
echo -e  "[1]addition\n[2]substraction\n[3]multiplictin\n[4]division\n"
read -p "enter your choice: " choice
case $choice in
	[1])
		read -p "enter your first number:" num1
		read -p "enter your second number:" num2
		result=$((num1 + num2))
		echo "the result for your choice is: $result"
		;;
	[2])
		read -p "enter your first number:" num1
		read -p "enter your second number:" num2
                result=$((num1 - num2))
                echo "the result for your choice is: $result"
                ;;
	[3])
		 read -p "enter your first number:" num1
		  read -p "enter your second number:" num2
                result=$((num1 * num2))
                echo "the result for your choice is: $result"
                ;;
	[4])
	           read -p "enter your first number:" num1
		   read -p "enter your second number:" num2
                   result=$((num1 / num2))
                   echo "the result for your choice is: $result"
          ;;
	*)
		echo "wrong coice"
		;;
esac
