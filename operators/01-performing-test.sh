#!/bin/bash

a=1000
b=200

#1 test same as [ condition ]
if test $a -gt $b;then
  echo "1: a is greater then b"
else
  echo "1: b is greater then a"
fi

if [ $a -gt $b ];then
  echo "1: a is greater then b"
else
  echo "1: b is greater then a"
fi

#2 [[ condition ]]
if [[ $a -gt $b ]];then
  echo "2: a is greater then b"
else
  echo "2: b is greater then a"
fi

#3 (( condition ))
if (( a > b ));then
  echo "3: a is greater then b"
else
  echo "3: b is greater then a"
fi

#3 ( command )
if ( ps );then
  echo "4: a is greater then b"
else
  echo "4: b is greater then a"
fi
  