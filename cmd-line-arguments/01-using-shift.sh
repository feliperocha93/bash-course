#!/bin/bash

echo "Using while and shift..."
while [ $# -gt 0 ]; do
  echo "Total Arguments: $# - $@"
  echo "Argument Passed >>>>> : $1"
  shift 3
  read
done


