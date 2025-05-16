#!/bin/bash

# filepath: /Users/catherinegyamfi/Desktop/Amalitech/bash_assignment/disk_space_analyzer.sh

# Function to display usage instructions
usage() {
    echo "Usage: $0 [directory]"
    echo "Analyzes disk usage in the specified directory."
    exit 1
}

# Check if the correct number of arguments is provided
if [[ $# -ne 1 ]]; then
    usage
fi

# Directory to analyze
TARGET_DIR=$1

# Check if the directory exists
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Error: Directory $TARGET_DIR does not exist."
    exit 1
fi

# Analyze disk usage
echo "Analyzing disk usage in $TARGET_DIR..."
echo "---------------------------------------"

# Total disk usage of the directory
echo "Total disk usage:"
du -sh "$TARGET_DIR"

# Disk usage by subdirectories and files
echo
echo "Disk usage by subdirectories and files:"
du -h "$TARGET_DIR"/* | sort -hr

# Largest files in the directory
echo
echo "Top 10 largest files:"
find "$TARGET_DIR" -type f -exec du -h {} + | sort -hr | head -n 10

echo
echo "Disk space analysis completed!"
