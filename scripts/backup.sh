#!/bin/bash

# Check that a source directory was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <source_directory>"
    exit 1
fi

SOURCE="$1"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Check that the source directory exists
if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Source directory does not exist: $SOURCE"
    exit 1
fi

# Create backup directory if it does not already exist
mkdir -p "$BACKUP_DIR"

echo "Starting backup..."
echo "Source: $SOURCE"
echo "Destination: $BACKUP_FILE"

# Create compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE"

# Check whether the backup succeeded
if [ $? -eq 0 ]; then
    echo "SUCCESS: Backup completed."
    echo "Backup file: $BACKUP_FILE"
else
    echo "ERROR: Backup failed."
    exit 1
fi
