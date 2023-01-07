#!/bin/bash

printf "Loop1: ----------\n"
for x in 1 2 3 4 5; do
  echo "For Loop 1: $x"
done

printf "\nLoop2: ----------\n"
for name in Felipe Margarida Laura; do
  echo "For Loop 2: $name"
done

printf "\nLoop3: ----------\n"
for x in $(seq 5); do
  echo "For Loop 3: $x"
done

printf "\nLoop4: ----------\n"
for x in {0..5}; do
  echo "For Loop 4: $x"
done

printf "\nLoop5: ----------\n"
for (( i = 0 ; i < 5 ; i++ )); do
  echo "For Loop 5: ${i}"
done