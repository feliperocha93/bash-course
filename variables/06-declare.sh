#!/bin/bash

# declare var w/o set a value
declare myvar

# set a value to the var
myvar="Felipe"

# export myvar to the enviroment
declare -x myvar

# remove myvar from the enviroment
declare +x myvar

# type as integer
declare -i age

# readonly
declare -r name

# lowercase
declare -l lowercase

# uppercase
declare -u uppercase

# array
declare -a array