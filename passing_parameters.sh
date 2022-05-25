#!/bin/bash

echo "the \$0 value is : script name is $0"

addition ()
{
	m=$1
	n=$2
	result=$((m+n))
	echo "the addition of $m and $n is: $result"
}
x=6
y=2
addition $x $y

p=3
q=7
addition $p $q

addition  9 99

	
