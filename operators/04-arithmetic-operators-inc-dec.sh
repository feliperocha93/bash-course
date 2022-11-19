#!/bin/bash

a=10

echo $(( a ))

echo "A:----------"
echo $(( a++ )) #10
echo "$a"       #11
echo "B:----------"
echo $(( ++a )) #12
echo "$a"       #12

echo "C:----------"
echo $(( a-- )) #12
echo "$a"       #11
echo "D:----------"
echo $(( --a )) #10
echo "$a"       #10
