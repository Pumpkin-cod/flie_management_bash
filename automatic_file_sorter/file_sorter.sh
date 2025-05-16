#!/bin/bash

# Directory to organize files in 
TARGET_DIR=${1:-$(pwd)}

# File type mappings (folder:extensions)
FOLDERS=("Documents:doc docx pdf txt xls xlsx ppt pptx"
         "Images:jpg jpeg png gif bmp svg"
         "Videos:mp4 mkv avi mov wmv"
         "Music:mp3 wav flac"
         "Archives:zip tar gz rar 7z"
         "Others:")

# Create subfolders if they don't exist
for mapping in "${FOLDERS[@]}"; do
    folder="${mapping%%:*}"
    mkdir -p "$TARGET_DIR/$folder"
done

# Move files into respective subfolders
for file in "$TARGET_DIR"/*; do
    if [[ -f "$file" ]]; then
        extension="${file##*.}"
        moved=false

        for mapping in "${FOLDERS[@]}"; do
            folder="${mapping%%:*}"
            extensions="${mapping#*:}"

            if [[ " $extensions " == *" $extension "* ]]; then
                mv "$file" "$TARGET_DIR/$folder/"
                echo "Moved $file to $folder/"
                moved=true
                break
            fi
        done

        # If no matching folder, then move the file to "Others"
        if [[ $moved == false ]]; then
            mv "$file" "$TARGET_DIR/Others/"
            echo "Moved $file to Others/"
        fi
    fi
done

echo "File sorting completed!"