#!/bin/bash
#ls
<< comm1
for each_file in $(ls)
do
	echo "$each_file"
done
comm1

<< comm2
for each_file in $(ls *.txt)
do
        echo "$each_file"
done
comm2

<< comm3
cnt=1
for each_file in $(ls)
do
	if [[ $cnt -eq 1 ]]
	then
        echo "$each_file"
        (( cnt++ ))
	fi

done
comm3

echo "starting for loop"
cnt=1
for each_file in $((ls))
do
	if [[ $cnt -eq 1 ]]
	then
		echo "$each_file"
		break
	fi
done
echo "for loop is over"
