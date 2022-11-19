#!/bin/bash

a=10
b=20
declare -i a=10
declare -i b=20
declare -i sum1 sum2 sum3 sum4

sum1=$a+$b
echo "1: Sum is $sum1"

sum2=$((a+b))
echo "2: Sum is $sum2"

sum3=$(expr $a + $b)
echo "3: Sum is $sum3"

let sum4=$a+$b
echo "4: Sum is $sum4"
