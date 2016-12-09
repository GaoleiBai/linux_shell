#!/bin/bash
#The statement of  if…then…fi    (注释语句)
if [ $(./b)  -eq  "1" ]
then
        echo  "eq 1"
        ./c
else
        echo  "not eq 1"
fi
