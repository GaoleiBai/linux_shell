#!/bin/bash
read stat
until [ $stat = "123456" ]
do
	read stat
done
exit 0 
