#!/bin/bash
echo "the below output is for \$*"
for each in "$*"
do
	echo $each
done

echo "the below output is for \$@"
for each in "$@"
do
	echo $each
done

<< comm
when run this script 
./diff_$@and$* 1 2 3 a b c
result;
the below output is for $*
1 2 3 a b c
the below output is for &@
1
2
3
a
b
c
 if your remove the "" of $@ and $* then run this 
	 ./diff_$@and$* 1 2 3 a b c
the below output is for &*
1
2
3
a
b
c
the below output is for &@
1
2
3
a
b
c
comm


