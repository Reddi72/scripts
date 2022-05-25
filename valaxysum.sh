#!/bin/bash
<< mycom1
x=10
y=65
#((sum=$x+$y))
#echo "the addition of $x and $y is; $sum"
#((div=y/x))
#echo $div
#bc<<<"scale=2;$y/$x"
result=$(bc<<<"scale=3;$y/$x")
echo "division of $y and $x is= $result"
mycom1
read -p "enter your first number;" a
read -p "enter your second number;" b
#((sum=a+b))
#echo $sum
sum=$(bc<<<"scale=3;$a+$b")
echo " the addition of $a and $b is;$sum"

