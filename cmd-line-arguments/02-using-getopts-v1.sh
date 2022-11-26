#!/bin/bash

# getopt - command on Linux
# getopts - bash built-in function
# Parses command line options and arguments

while getopts "f:m:l:n:" option; do
  # OPTARG -> option value
  # OPTIND -> option index in bash
  echo "OPTIND: ${OPTIND}"
  case "${option}" in
    f )
      echo "Parsing -f option"
      FNAME=${OPTARG}
    ;;
    m )
      echo "Parsing -m option"
      MNAME=${OPTARG}
    ;;
    l )
      echo "Parsing -l option"
      LNAME=${OPTARG}
    ;;
    n )
      echo "Parsing -n option"
      NOTE=${OPTARG}
    ;;
  esac
done

RESULT="$FNAME|$MNAME|$LNAME|$NOTE"
echo $RESULT