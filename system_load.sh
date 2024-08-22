#!/bin/bash


echo "Current Load Average:"
uptime | awk -F'load averages:' '{ print $2 }'

echo -e "\nCPU Usage Breakdown:"
top -l 1 | grep -E "^CPU" | awk '{ print "User: "$3"\nSystem: "$5"\nIdle: "$7 }'
