#!/bin/bash

echo "Total Arguments : $#"

ls
# lss
# 0 means sucess. Others number means fail.
echo "The status of the last command : $?"

echo "The PID of the current shell is : $$"

echo "The PID of the background process is : $!"

echo "The arguments passed is : $*"
bash ./03* "$*"

# Internal Field Separator -> IFS = "|"
echo "The arguments passed is : $@"
bash ./03* "$@"
