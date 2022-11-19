#!/usr/bin/env bash

ROOT="/Users/felipelucena/projetos/bash-course/operators"
FILE="08-file-operators.sh"

# Check if a file exists
# -a consider all files
if [ -a "$ROOT" ]; then
  echo "-a: The file is found"
else
  echo "-a: The file is not found"
fi

# -f consider just  regular files
if [ -f "$ROOT" ]; then
  echo "-f: The file is found"
else
  echo "-f: The file is not found"
fi
if [ -f "$ROOT/$FILE" ]; then
  echo "-f: The file is found"
else
  echo "-f: The file is not found"
fi

# -s check if a file is empty
if [ -s "$ROOT/empty.txt" ]; then
  echo "-s: The file is found and is not empty"
else
  echo "-s: The file is not present or it is empty"
fi

# Check if a directory exists
if [ -d "$ROOT" ]; then
  echo "-d: The file is a directory"
else
  echo "-d: The file is not a directory"
fi
if [ -d "$ROOT/empty.txt" ]; then
  echo "-d: The file is a directory"
else
  echo "-d: The file is not a directory"
fi

# Check if ypu have permissions
# -r, -w, -x
if [ -r "$ROOT/$FILE" ]; then
  echo "-r: You have read permission"
else
  echo "-r: You haven't read permission"
fi
if [ -w "$ROOT/$FILE" ]; then
  echo "-w: You have write permission"
else
  echo "-w: You haven't write permission"
fi
if [ -x "$ROOT/$FILE" ]; then
  echo "-x: You have execute permission"
else
  echo "-x: You haven't execute permission"
fi

# Check if you are the owner/group
if [ -O "$ROOT/$FILE" ]; then
  echo "-O: You are owner"
else
  echo "-O: You aren't owner"
fi
if [ -G "$ROOT/$FILE" ]; then
  echo "-G: You are in the group"
else
  echo "-G: You aren't in the group"
fi

# newer/older
if [ empty.txt -nt copy.txt ]; then
  echo "-nt: Newer"
else
  echo "-nt: Older"
fi
if [ empty.txt -ot copy.txt ]; then
  echo "-ot: Older"
else
  echo "-ot: Newer"
fi