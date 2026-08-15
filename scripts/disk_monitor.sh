#!/bin/bash

# Disk usage threshold percentage
THRESHOLD=80

# Get the percentage of disk space currently used on /
USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "================================="
echo "        DISK USAGE MONITOR"
echo "================================="
echo
echo "Disk usage: ${USAGE}%"
echo "Warning threshold: ${THRESHOLD}%"
echo

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "WARNING: Disk usage has reached or exceeded the threshold."
else
    echo "OK: Disk usage is within the acceptable range."
fi

echo
echo "================================="
