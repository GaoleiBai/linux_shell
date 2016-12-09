#!/bin/bash
#example2  for  test
echo "请输入:"
read answer
test "$answer" =  "yes"
echo $?

x=3
y=5
test $x -eq $y
echo $?

test -d $1
echo $?
