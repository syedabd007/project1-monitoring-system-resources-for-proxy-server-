# macOS Monitoring Scripts

This repository contains a collection of Bash scripts designed for monitoring various system metrics on macOS. Each script provides insights into different aspects of system performance, including CPU usage, memory usage, filesystem status, network activity, and service status.

## Scripts Overview

1. **`custom_dashboard_macos.sh`**
   - **Description**: A custom dashboard script that provides command-line switches to view specific parts of the dashboard: CPU, memory, and network usage.
   - **Usage**:
     ```bash
     ./custom_dashboard_macos.sh -cpu      # Displays CPU usage
     ./custom_dashboard_macos.sh -memory   # Displays memory usage
     ./custom_dashboard_macos.sh -network   # Displays network usage
     ```

2. **`ram_status.sh`**
   - **Description**: Monitors and displays the current RAM usage of the system.
   - **Usage**:
     ```bash
     ./ram_status.sh
     ```

3. **`filesystem_status.sh`**
   - **Description**: Monitors the status of the filesystem, including available disk space and usage.
   - **Usage**:
     ```bash
     ./filesystem_status.sh
     ```

4. **`service_monitor_macos.sh`**
   - **Description**: Monitors the status of essential services such as SSH, NGINX, and the macOS firewall (pf).
   - **Usage**:
     ```bash
     ./service_monitor_macos.sh
     ```

5. **`network_monitor.sh`**
   - **Description**: Monitors network connections, packet drops, and bandwidth usage.
   - **Usage**:
     ```bash
     ./network_monitor.sh
     ```

6. **`system_load.sh`**
   - **Description**: Displays the current load average for the system along with a breakdown of CPU usage (user, system, idle).
   - **Usage**:
     ```bash
     ./system_load.sh
     ```

7. **`process_monitor.sh`**
   - **Description**: Displays the number of active processes and lists the top processes using CPU and memory.
   - **Usage**:
     ```bash
     ./process_monitor.sh
     ```

8. **`top10processes.sh`**
   - **Description**: Lists the top 10 processes consuming the most CPU and memory resources.
   - **Usage**:
     ```bash
     ./top10processes.sh
     ```

## Requirements

- **macOS**: These scripts are designed to run on macOS and utilize built-in command-line tools.
- **Bash**: The scripts are written in Bash and should be executed in a Bash shell.

## Installation

1. Clone this repository:
   ```bash
   git clone <repository-url>
