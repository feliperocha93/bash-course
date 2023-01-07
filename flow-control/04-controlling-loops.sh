#!/bin/bash

printf "\nSleep\n"
for x in $(seq 5); do
  sleep 1
  echo "$x"
done
printf "OK ✅"

printf "\nContinue\n" 
for x in $(seq 5); do
  printf "cheking..."
  if [ "$x" -eq 3 ]; then
    printf "\n"
    continue
  fi
  printf " checked\n"
done
printf "OK ✅"

printf "\nBreak\n" 
for x in $(seq 5); do
  printf "cheking..."
  if [ "$x" -eq 3 ]; then
    printf "\n"
    break
  fi
  printf " checked\n"
done
printf "OK ✅"

printf "\nBreak\n" 
for x in $(seq 5); do
  printf "cheking..."
  if [ "$x" -eq 3 ]; then
     exit
  fi
  printf " checked\n"
done
printf "OK ✅"