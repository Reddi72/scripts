#!/bin/bash
read_inputs()
{
echo " enter your first number";
read a
echo " enter your second number";
read b
}
addition()
{
sum=$((a + b ))
echo "the addition of $a and $b is: $sum"
}
substaction()
{
sub=$((a - b))
echo "the substraction of $a and $b is: $sub"
}
read_inputs
addition
substaction
