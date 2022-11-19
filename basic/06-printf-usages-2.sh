#!/bin/bash

# This way, the printf statement apply \t for the first argument
# and \n for the second. So on, how we haven't a third instruction,
# the instructions passed work as a loop.
printf "%s\t %s\n" "A" "B" "C" "D" "E"
printf "\n"

# Here, we are using a float with two instructions:
# 1. 10 represents the width of the number in console (number of characters)
# 2. 2 represents the decimal
printf "%10.2f\n" 125 500,252 4556,2
printf "\n"
