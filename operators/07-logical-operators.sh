#!/usr/bin/env 

# && - Logical AND
# || - Logical OR
# ! - Logical NOT

A=10
B=20

if [ "$A" -eq 100 ] || [ "$B" -eq 20 ]; then
    echo "1: True"
else
    echo "1: False"
fi

if (( !(A == 10) )); then
    echo "2: True"
else
    echo "2: False"
fi
