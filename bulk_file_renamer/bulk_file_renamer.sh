#!/bin/bash
# Bulk File Renamer Script
# This script renames files in a specified directory based on user-defined options.
# Function to display usage instructions
usage() {
    echo "Usage: $0 [directory] [option] [argument]"
    echo "Options:"
    echo "  -p [prefix]       Add a prefix to all files"
    echo "  -s [suffix]       Add a suffix to all files (before the extension)"
    echo "  -r [pattern]      Replace a pattern in filenames"
    echo "  -n [newname]      Rename files sequentially with a new base name"
    exit 1
}

# Check if the correct number of arguments is provided
if [[ $# -lt 3 ]]; then
    usage
fi

# Directory to process
TARGET_DIR=$1
OPTION=$2
ARGUMENT=$3

# Check if the directory exists
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Error: Directory $TARGET_DIR does not exist."
    exit 1
fi

# Perform the renaming based on the option
case $OPTION in
    -p) # Add a prefix
        for file in "$TARGET_DIR"/*; do
            if [[ -f "$file" ]]; then
                base=$(basename "$file")
                mv "$file" "$TARGET_DIR/$ARGUMENT$base"
                echo "Renamed $file to $TARGET_DIR/$ARGUMENT$base"
            fi
        done
        ;;
    -s) # Add a suffix
        for file in "$TARGET_DIR"/*; do
            if [[ -f "$file" ]]; then
                base=$(basename "$file")
                name="${base%.*}"
                ext="${base##*.}"
                mv "$file" "$TARGET_DIR/${name}${ARGUMENT}.${ext}"
                echo "Renamed $file to $TARGET_DIR/${name}${ARGUMENT}.${ext}"
            fi
        done
        ;;
    -r) # Replace a pattern
        for file in "$TARGET_DIR"/*; do
            if [[ -f "$file" ]]; then
                base=$(basename "$file")
                newname=$(echo "$base" | sed "s/$ARGUMENT//g")
                mv "$file" "$TARGET_DIR/$newname"
                echo "Renamed $file to $TARGET_DIR/$newname"
            fi
        done
        ;;
    -n) # Rename sequentially
        counter=1
        for file in "$TARGET_DIR"/*; do
            if [[ -f "$file" ]]; then
                ext="${file##*.}"
                mv "$file" "$TARGET_DIR/${ARGUMENT}_${counter}.${ext}"
                echo "Renamed $file to $TARGET_DIR/${ARGUMENT}_${counter}.${ext}"
                ((counter++))
            fi
        done
        ;;
    *)
        echo "Error: Invalid option."
        usage
        ;;
esac

echo "Bulk renaming completed!"
