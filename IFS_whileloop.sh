#!/bin/bash

<< comm1
while read line
do
	echo "$line"

done < file.sh
comm1

<< comm2
while read f1 f2 f3 f4 f5
do 
	echo "$f2 $f3"
done < file.sh
echo ".................."
echo " above space taken as a field separarator"
comm2

<< comm3
while IFS="," read f1 f2 f3 f4 f5
do
        echo "$f2"
done < file1
echo ".................."
echo " above ,  taken as a field separarator"
comm3

 cat file1 | awk 'NR=1 {print}'| while IFS="," read f1 f2
do
	echo " $f1 $f2 "
done
