#!/bin/bash

echo "================================="
echo "          USER AUDIT REPORT"
echo "================================="
echo

echo "Generated: $(date)"
echo "Hostname: $(hostname)"
echo

echo "----- CURRENT USER -----"
echo "User: $(whoami)"
echo "User ID: $(id -u)"
echo "Primary Group: $(id -gn)"
echo "Groups: $(id -Gn)"
echo

echo "----- USERS WITH LOGIN SHELLS -----"
awk -F: '$7 ~ /(bash|sh|zsh)$/ {print $1 " -> " $7}' /etc/passwd
echo

echo "----- SUDO GROUP MEMBERS -----"
getent group sudo
echo

echo "----- UID 0 ACCOUNTS -----"
awk -F: '$3 == 0 {print $1}' /etc/passwd
echo

echo "----- RECENT LOGIN INFORMATION -----"
last -n 5 2>/dev/null
echo

echo "================================="
echo "          AUDIT COMPLETE"
echo "================================="
