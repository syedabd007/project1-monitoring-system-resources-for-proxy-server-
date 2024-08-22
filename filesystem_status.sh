#!/bin/bash

#monitoring the free filesystem space disk
FU=$(df -H |egrep -v "Filesystem|tmpfs" |grep "sda2" | awk '{print $5}' |tr -d %)
if [[$FU -ge 80]]
then 
    echo "warning,disk space is low"
else 
    echo "All good"
fi
