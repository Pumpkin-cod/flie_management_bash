#!/bin/bash

# filepath: /Users/catherinegyamfi/Desktop/Amalitech/bash_assignment/duplicate_file_finder.sh

# Function to display usage instructions
usage() {
    echo "Usage: $0 [directory]"
    echo "Finds duplicate files in the specified directory."
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

# Find duplicate files
echo "Searching for duplicate files in $TARGET_DIR..."
echo "-----------------------------------------------"

# Use associative arrays to store file checksums and paths
declare -A file_checksums
declare -A duplicates

# Iterate over all files in the directory
while IFS= read -r -d '' file; do
    # Calculate the checksum of the file
    checksum=$(md5sum "$file" | awk '{print $1}')
    
    # Check if the checksum already exists
    if [[ -n "${file_checksums[$checksum]}" ]]; then
        # If it exists, it's a duplicate
        duplicates["$file"]="${file_checksums[$checksum]}"
    else
        # Otherwise, store the checksum and file path
        file_checksums["$checksum"]="$file"
    fi
done < <(find "$TARGET_DIR" -type f -print0)

# Display duplicate files
if [[ ${#duplicates[@]} -eq 0 ]]; then
    echo "No duplicate files found."
else
    echo "Duplicate files found:"
    for duplicate in "${!duplicates[@]}"; do
        echo "Duplicate: $duplicate"
        echo "Original: ${duplicates[$duplicate]}"
        echo "-----------------------------------------------"
    done
fi

echo "Duplicate file search completed!"