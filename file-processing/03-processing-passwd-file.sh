#!/bin/bash

#IGNORE USERS WITHIN /etc/passwd WITH THE FOLLOWING
#/usr/bin/nologin
#/usr/bin/false
file_passwd="/etc/passwd"

#cat $file_passwd to identify the index of fields that must be ignore
# 1 - user id
# 6 - home dir
# 7 - shell

#internal field separator
IFS=$'\n'
cat $file_passwd | while read user_line; do
  USER_ID=$( echo $user_line | cut -d: -f1 )
  USER_HOMEDIR=$( echo $user_line | cut -d: -f6 )
  USER_SHELL=$( echo $user_line | cut -d: -f7 )

  if [ "$USER_SHELL" = "/usr/bin/nologin" ] || [ "$USER_SHELL" = "/usr/bin/false" ]; then
    continue
  fi

  printf "\%s\n" "$USER_ID -- $USER_SHELL -- $USER_HOMEDIR"
  
done