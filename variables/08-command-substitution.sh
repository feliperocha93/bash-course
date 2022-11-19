#!/bin/bash

computername=`hostname`
echo "computername: $computername"

ipaddresses=$( ifconfig | grep -v inet6 | grep inet | awk '{print $2}' | grep -v ^127 )
echo "ipaddresses : $ipaddresses"

echo "The number of sessions to this system: $(who | wc -l)"
echo "The users connected to this system: $(who | awk '{print $1}')"