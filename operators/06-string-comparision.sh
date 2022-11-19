#!/usr/bin/env bash

#   =   Equal to
#   !=  Not equal to
#   -z  check if string is null (length = 0)
#   -n  check if string is not null

NAME="Felipe"

function check_equality {
  if [ "$1" = $NAME ]; then
   echo "$1 is equal Felipe"
  fi

  if [ "$1" != $NAME ]; then
    echo "$1 is different from Felipe"
  fi
}

function check_nullability {
  if [ -z "$1" ]; then
   echo "$1 is null"
  fi

  if [ -n "$1" ]; then
    echo "$1 is not null"
  fi
}

check_equality "$1"
check_nullability "$1"
