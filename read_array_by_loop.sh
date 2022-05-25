#!/bin/bash
my_array=(1 4 3 "love" 45)
for each in ${my_array[*]}
do
	echo "${each}"
done

