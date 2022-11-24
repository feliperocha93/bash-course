#!/bin/bash

file_animlas="animals.txt"

function simple_read {
  cat $file_animlas | while read -r abc; do
    if [ "$abc" = 'horse' ]; then
      echo "Found the horse!"
      exit
    fi
    echo "$abc"
  done
}

function fast_read {
  while read -r abc; do
    if [ "$abc" = 'pig' ]; then
      echo "Found the pig!"
      exit
    fi
    echo "$abc"
  done < $file_animlas
}

select method in fast_read simple_read
do
echo "$method"
$method
done
exit