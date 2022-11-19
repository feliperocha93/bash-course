#!/bin/bash

printf "%11s\t" "ID" "COURSE NAME" "LEVEL" "ACTUAL PRICE" "DISC. PRICE"
printf "\n" 

printf "%s\n" "--------------------------------------------------------------------------------"

printf \
  "%11d\t %11s\t %11s\t %11.2f\t %11.2f\t\n" \
  10 "Bash" "L100" 99 12
printf \
  "%11d\t %11s\t %11s\t %11.2f\t %11.2f\t\n" \
  105 "Linux" "L200" 1599 15