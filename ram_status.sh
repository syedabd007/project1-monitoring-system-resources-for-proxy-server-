#!/bin/bash
FREE_SPACE=$(free-mt | grep "Total" | awk'print $4')
TH=500

if [[$FREE_SPACE -lt $TH]]
then
     echo "warning,ram is low "
else
     echo "ram space is sufficient -FREE_SPACE M "
fi 
