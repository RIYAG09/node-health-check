#!/bin/bash

# Author: Riya
# Date: 2025-03-21
# Purpose: Check the health of the virtual machine
# Version: 1.0

# Function to check disk space
check_disk_space() {
    echo "Checking disk space..."
    df -h 
}

# Function to check memory usage
check_memory_usage() {
    echo "Checking memory usage..."
    free -m 
}

# Function to check CPU usage
check_cpu_usage() {
    echo "Checking CPU usage..."
    nproc
}

# Function to check running processes
check_running_processes() {
    echo "Checking running processes..."
    ps -ef | grep -i amazon | grep -v grep
}

# Main script execution
echo "=== Node Health Check ==="
check_disk_space
check_memory_usage
check_cpu_usage
check_running_processes
echo "=== Health Check Complete ==="
