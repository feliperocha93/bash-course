#!/bin/bash
function get_user_record() {
  user_record=$(grep $1 /etc/passwd)
}

function get_user_shell() {
  user_shell=$(grep $1/etc/passwd | cut -d -f7)
  echo $user_shell
}

function get_user_hd() {
  user_hd=$(grep $1/etc/passwd | cut -d -f6)
  echo $user_hd
}

function display_date_time() {
  date
}



