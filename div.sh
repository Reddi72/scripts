#!/bin/bash
echo "enter first number";
read a
echo "enter seond number";
read b
echo answer = $(expr $a / $b)

