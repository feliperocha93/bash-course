#!/bin/bash

#!/bin/bash

file_animlas="animals.txt"

function simple_read {
  for line in $(cat $file_animlas); do
    if [ "$line" = 'horse' ]; then
      echo "Found the horse!"
      exit
    fi
    echo "$line"
  done
}

function fast_read {
  for line in `cat $file_animlas`; do
    if [ "$line" = 'pig' ]; then
      echo "Found the pig!"
      exit
    fi
    echo "$line"
  done
}

select method in fast_read simple_read
do
echo "$method"
$method
done
exit