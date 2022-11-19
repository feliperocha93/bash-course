#!/bin/bash

COURSE="Bash Shell Scripting"
SITE="GlobaleTraining.com"

function gethostdetails {
  hostname
  ifconfig | grep -v inet6 | grep inet | awk '{print $2}' | grep -v ^127
}