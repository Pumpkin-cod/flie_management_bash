#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 [source_directory] [backup_directory]"
    echo "Backs up files from the source directory to the backup directory."
    exit 1
}

# Check if the correct number of arguments is provided
if [[ $# -ne 2 ]]; then
    usage
fi

# Source and backup directories
SOURCE_DIR=$1
BACKUP_DIR=$2

# Check if the source directory exists
if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "Error: Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Create the backup directory if it doesn't exist
if [[ ! -d "$BACKUP_DIR" ]]; then
    mkdir -p "$BACKUP_DIR"
    echo "Created backup directory: $BACKUP_DIR"
fi

# Perform the backup
echo "Starting backup from $SOURCE_DIR to $BACKUP_DIR..."
rsync -av --update "$SOURCE_DIR/" "$BACKUP_DIR/"

echo "Backup completed successfully!"
