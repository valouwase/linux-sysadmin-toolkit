#!/bin/bash

echo "================================="
echo "       SYSTEM HEALTH REPORT"
echo "================================="
echo

echo "Generated: $(date)"
echo "Hostname: $(hostname)"
echo

echo "----- UPTIME AND SYSTEM LOAD -----"
uptime
echo

echo "----- MEMORY USAGE -----"
free -h
echo

echo "----- DISK USAGE -----"
df -h /
echo

echo "----- LOGGED-IN USERS -----"
who
echo

echo "================================="
echo "         END OF REPORT"
echo "================================="
