# File Sync Utility

## Overview
This project is a Bash script designed to synchronize files between two directories. It ensures that the target directory is updated with the latest changes from the source directory.

## Features
- One-way synchronization from source to target.
- Handles file additions, updates, and deletions.
- Logs synchronization activities for tracking.

## Prerequisites
- Bash shell (version 4.0 or higher).
- Basic understanding of shell scripting.

## Usage
1. Clone the repository:
    ```bash
    git clone https://github.com/Pumpkin-cod/flie_management_bash.git
    ```
2. Navigate to the project directory:
    ```bash
    cd file_sync_utility
    ```
3. Run the script:
    ```bash
    ./sync.sh <source_directory> <target_directory>
    ```

## Example
```bash
./sync.sh /path/to/source /path/to/target
```

## Notes
- Ensure you have the necessary permissions to read/write in the specified directories.
- Test the script in a non-critical environment before using it on important data.

