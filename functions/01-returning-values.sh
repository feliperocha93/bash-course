#!/bin/bash

function get_user_count_1 {
  user_count_1=$(cat /etc/passwd | wc -l)
}
get_user_count_1
echo "Total User Accounts 1 : $user_count_1"

function get_user_count_2 {
  user_count_2=$(cat /etc/passwd | wc -l)
  echo $user_count_2
}
get_user_count_2
echo "Total User Accounts 2 : $user_count_2"

function get_user_count_3 {
  return $(cat /etc/passwd | wc -l)
}
get_user_count_3
user_count_3=$?
echo "Total User Accounts 3 : $user_count_3"