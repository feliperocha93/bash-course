#!/bin/bash

readonly my_name="Felipe"
# Nothing happens and display a warning on the terminal
my_name="Laura"
echo "My name is ${my_name}"

last_name="Rocha"
# Remove the variable from the scope
unset last_name
echo "My last name is ${last_name}"

# Add some config for the script running.
# This case, -u meaning all issues with varibles will be reported on the terminal
# and the current session will be interrupted
set -u
my_age=29
unset my_age
# echo "I'm ${age} years old"

# Revert some config added before
set +u
my_age=29
unset my_age
echo "I'm ${age} years old"
