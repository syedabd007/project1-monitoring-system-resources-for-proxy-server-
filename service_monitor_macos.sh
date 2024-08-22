#!/bin/bash

SERVICES=("ssh" "nginx" "pf")

check_service_status() {
    service_name=$1
    if brew services list | grep -q "$service_name.*started"; then
        echo "$service_name is running."
    elif launchctl list | grep -q "$service_name"; then
        echo "$service_name is loaded but not running."
    else
        echo "$service_name is not loaded."
    fi
}

echo "Monitoring essential services..."
for service in "${SERVICES[@]}"; do
    check_service_status "$service"
done
