#!/bin/bash

# Check that a log file was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE="$1"

# Check that the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "ERROR: Log file does not exist: $LOG_FILE"
    exit 1
fi

# Count errors and warnings
ERROR_COUNT=$(grep -ci "error" "$LOG_FILE")
WARNING_COUNT=$(grep -ci "warning" "$LOG_FILE")

echo "================================="
echo "          LOG ANALYZER"
echo "================================="
echo
echo "Log file: $LOG_FILE"
echo "Errors found: $ERROR_COUNT"
echo "Warnings found: $WARNING_COUNT"
echo

echo "----- RECENT ERRORS/WARNINGS -----"
grep -iE "error|warning" "$LOG_FILE" | tail -n 10

echo
echo "================================="
echo "        ANALYSIS COMPLETE"
echo "================================="
grep -ci "error" "$LOG_FILE"
grep -iE "error|warning"
tail -n 10
