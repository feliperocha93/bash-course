#!/bin/bash

a=0
# as long as it is TRUE
while [ $a -lt 10 ]; do
  echo "While Block: $((a++))"
done
echo "----------"

b=0
# as long as it is FALSE
until [ $b -gt 10 ]; do
  echo "Until Block: $((b++))"
done

