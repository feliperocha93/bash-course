#!/bin/bash

a=100
b=20

if [[ $a -gt $b ]]; then
  echo "1: True"
else
  echo "1: False"
fi

if (( a > b )); then
  echo "2: True"
else
  echo "2: False"
fi