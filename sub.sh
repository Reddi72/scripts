#!/bin/bash
echo "enter first number";
read a
echo "enter second number";
read b
x=$(expr "$a" - "$b")
echo $a - $b=$x

