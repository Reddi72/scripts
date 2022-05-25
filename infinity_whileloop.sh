#!/bin/bash
<< comm1
while true
do
	echo " hi "
	echo "........"
done
comm1

<< comm2
while :
do
        echo " hi "
        echo "........"
done
comm2

<< comm3
while "date"
do
        echo "excuteing date command by while loop "
        echo "........"
done
comm3

<< comm4
start=1
while [[ $start -le 10 ]]
do
        echo "$start"
              (( start++))
done
comm4

file_name="file.sh"
while read each_line
do
	echo "$each_line"
done <$file_name

