#!/bin/bash

read -r -p "Service Action (start, stop, pause, restart): " action

action=$( echo "$action" | tr :'A-Z': :'a-z':)
echo "Your Request : $action"

case "${action}" in
  start )
    echo "Starting the service"
  ;;
  stop )
    echo "Stopping the service"
  ;;
  restart )
    echo "Restarting the service"
  ;;
  pause )
    echo "Pausing the service"
  ;;
  * )
    echo "Incorrect action entered"
  ;;
esac

