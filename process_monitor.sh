#!/bin/bash

echo "Number of Active Processes:"
ps -e | wc -l

echo -e "\nTop 5 Processes by CPU Usage:"
ps -A -o pid,ppid,command,%cpu,%mem -r | head -n 6

echo -e "\nTop 5 Processes by Memory Usage:"
ps -A -o pid,ppid,command,%cpu,%mem | sort -nrk 5 | head -n 6

