#!/bin/bash

function gettotal {
  local total=$(( $1 + $2 + $3 ))
  echo $total
}

sum=$(gettotal 10 20 30)
echo "Total: $sum"

function get_user_record {
  local user_record=$(grep $1 /etc/passwd)
  echo $user_record
}

user_record_tmp=$(get_user_record uucico)
echo "User Record: $user_record_tmp"

