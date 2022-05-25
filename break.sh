#!/bin/bash
<< comm1
for each in $(seq 1 10)
do
	if [[ $each -gt 5 ]]
	then
		break
	fi
	echo "$each"
done
comm1

<< comm2
for each in $(seq 1 10)
do
	if [[ $each -ne 5 ]]
	then
		echo "$each"
	fi
done
comm2

for each in $(seq 1 10)
do
	if [[ $each -eq 5 ]]
	then
		continue
	fi
	echo "$each"
done
echo "for loop is over"

