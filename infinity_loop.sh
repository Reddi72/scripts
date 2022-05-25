#!/bin/bash
echo "this is a for loop"
for ((;;))
do
	echo "this is infinity loop"
	((cnt++))
	sleep 1
	if [[ $cnt -eq 5 ]]
	then
		break
	fi
done
echo "out of loop"

