#!/bin/bash

# works like a loop
touch text-{a..e}{1..5}.txt

string1="Felipe"
string2="Rocha"
string3=""

# if not exist, print Laura
echo "1:----------"
echo "${string5:-Laura}"
echo "${string5}"

# if not exist, print Laura and create w/ Laura
echo "2:----------"
echo "${string4:=Laura}"
echo ${string4}

# if undefined will break
echo "3:----------"
# echo "${string3:?undefined}"
echo "${string3}"

# if exists and is not null print1
echo "4:----------"
echo "${string1:+1}"
echo "${string1}"

# works as js .slice()
echo "4:----------"
string6=123456789
echo "${string6:3}"     # offset
echo "${string6: -3}"   # length (init from the end)
echo "${string6:3:5}"   # variable:offset:lentgh
echo "${string6: -6:3}"   # variable:offset (from the back):lentgh



