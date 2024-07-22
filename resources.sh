#!/bin/bash

# Check CPU usage
echo "CPU Usage"
mpstat

# Check Memory usage
echo "Memory Usage"
free -h

# List top 10 CPU consuming processes
echo "Top 10 CPU Consuming Processes"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 11

# List top 10 Memory consuming processes
echo "Top 10 Memory Consuming Processes"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 11

