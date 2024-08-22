#!/bin/bash

show_cpu() {
    echo "=== CPU Usage ==="
    # Display CPU usage
    top -l 1 -s 0 | grep "CPU usage"
}

show_memory() {
    echo -e "\n=== Memory Usage ==="
    # Display Memory usage
    vm_stat | awk 'NR>1 {print $1, $2}'
}

show_network() {
    echo -e "\n=== Network Usage ==="
    # Display Network usage
    netstat -ib | awk 'NR>1 {print $1, $7, $8, $9, $10, $11, $12}'
}

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 [-cpu | -memory | -network]"
    exit 1
fi

for arg in "$@"; do
    case $arg in
        -cpu)
            show_cpu
            ;;
        -memory)
            show_memory
            ;;
        -network)
            show_network
            ;;
        *)
            echo "Invalid option: $arg"
            echo "Usage: $0 [-cpu | -memory | -network]"
            exit 1
            ;;
    esac
done
