#!/bin/bash
# The statement for  while
if [ $# = 2 ]
then
	loop=$2
else
	loop=5
fi

i=1

while  [  $i  -lt   $loop  ]
do
	echo “hello”>$1$i
	i=`expr  $i  +  1`
done
i=1
while  [  $i  -lt   $loop  ]
do
	cat $1$i
	i=`expr  $i  +  1`
done

