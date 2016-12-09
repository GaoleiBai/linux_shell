#!/bin/bash
# The statement of for…do…done
if  [  !  -d  $HOME/backup  ]
then
	mkdir  $HOME/backup
fi

flist=`ls`
#把当前目录中的所有文件拷贝到$HOME/backup中
for  file  in  $flist
do
	if [  $#  =  1  ]
	then
		if [  $1  =  $file  ]
		then
			echo  "$file  found" ;  exit
		fi
	else
		cp  $file  $HOME/backup
		echo  "$file  copied"
	fi
done

echo   '***Back  up  completed***'
