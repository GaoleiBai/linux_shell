#这个shell的作用是判断指定目录下，每一个文件是不是shell脚本文件，判断的依据是这个文件的开始部分是不是以“#!”开始的
#!/bin/bash

TESTCHARS=2
 head="#!"
PATHNAME=$(pwd)

if [ "$#" -eq 1 -a -d "$1" ]
then
    PATHNAME=$1
fi

 for file in $(ls $PATHNAME)
do
    if test -f $file ; then
        headchar=`head -c$TESTCHARS $file`
        if test $headchar="$head"
        then
            echo "file $file is a script"
        else
            echo "file $file is not a script"
        fi
    else
        echo "file $file is not a script"
    fi
done
exit 0
