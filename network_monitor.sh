#!/bin/bash

INTERVAL=5

monitor_connections() {
    echo "Number of concurrent connections:"
    netstat -an | grep 'ESTABLISHED' | wc -l
}

monitor_packet_drops() {
    echo "Packet drops (eth0):"
    ifconfig en0 | grep 'RX packets' | awk '{print $5 " dropped"}'
}

monitor_traffic() {
    RX_BYTES_BEFORE=$(cat /sys/class/net/eth0/statistics/rx_bytes)
    TX_BYTES_BEFORE=$(cat /sys/class/net/eth0/statistics/tx_bytes)

    sleep $INTERVAL

    RX_BYTES_AFTER=$(cat /sys/class/net/eth0/statistics/rx_bytes)
    TX_BYTES_AFTER=$(cat /sys/class/net/eth0/statistics/tx_bytes)

    RX_DIFF=$((RX_BYTES_AFTER - RX_BYTES_BEFORE))
    TX_DIFF=$((TX_BYTES_AFTER - TX_BYTES_BEFORE))

    RX_MB=$(echo "scale=2; $RX_DIFF / 1024 / 1024" | bc)
    TX_MB=$(echo "scale=2; $TX_DIFF / 1024 / 1024" | bc)

    echo "Data received: $RX_MB MB"
    echo "Data sent: $TX_MB MB"
}

echo "Starting network monitoring..."
echo "Check interval: $INTERVAL seconds"

while true; do
    echo -e "\n--- Network Monitoring ---"
    
    monitor_connections
    monitor_packet_drops
    monitor_traffic

    sleep $INTERVAL
done

