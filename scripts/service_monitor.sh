#!/bin/bash

# Check that a service name was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <service_name>"
    exit 1
fi

SERVICE="$1"

echo "================================="
echo "        SERVICE MONITOR"
echo "================================="
echo
echo "Service: $SERVICE"
echo

# Check whether the service exists
if ! systemctl list-unit-files --type=service | grep -q "^${SERVICE}.service"; then
    echo "ERROR: Service '$SERVICE' was not found."
    exit 1
fi

# Check whether the service is active
if systemctl is-active --quiet "$SERVICE"; then
    echo "Status: ACTIVE"
else
    echo "Status: INACTIVE"
fi

# Check whether the service starts automatically
if systemctl is-enabled --quiet "$SERVICE" 2>/dev/null; then
    echo "Startup: ENABLED"
else
    echo "Startup: DISABLED"
fi

echo
echo "----- SERVICE DETAILS -----"
systemctl status "$SERVICE" --no-pager --lines=5

echo
echo "================================="
echo "       MONITOR COMPLETE"
echo "================================="
