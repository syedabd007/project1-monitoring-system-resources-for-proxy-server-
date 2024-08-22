#!/bin/bash

echo "Top 10 Processes by CPU Usage:"
ps aux | sort -nrk 3,3 | head -n 10

echo -e "\nTop 10 Processes by Memory Usage:"
ps aux | sort -nrk 4,4 | head -n 10

