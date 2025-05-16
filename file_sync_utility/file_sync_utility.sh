#!/bin/bash

# filepath: /Users/catherinegyamfi/Desktop/Amalitech/bash_assignment/file_sync_utility/file_sync_utility.sh

# Function to display usage instructions
usage() {
    echo "Usage: $0 [source_directory] [destination_directory]"
    echo "Synchronizes files between the source and destination directories."
    exit 1
}

# Check if the correct number of arguments is provided
if [[ $# -ne 2 ]]; then
    usage
fi

# Source and destination directories
SOURCE_DIR=$1
DEST_DIR=$2

# Check if the source directory exists
if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "Error: Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Create the destination directory if it doesn't exist
if [[ ! -d "$DEST_DIR" ]]; then
    mkdir -p "$DEST_DIR"
    echo "Created destination directory: $DEST_DIR"
fi

# Perform the synchronization
echo "Synchronizing files from $SOURCE_DIR to $DEST_DIR..."
rsync -av --delete "$SOURCE_DIR/" "$DEST_DIR/"

echo "File synchronization completed successfully!"
