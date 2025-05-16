# File Backup System

This project is a simple **File Backup System** implemented using Bash scripts. It automates the process of creating backups for files and directories, ensuring data safety and easy recovery.

## Features

- Backup specific files or entire directories.
- Automatically create timestamped backup folders.
- Supports incremental backups to save storage space.
- Logs backup operations for easy tracking.

## Prerequisites

- A Unix-based operating system (Linux, macOS, etc.).
- Bash shell (version 4.0 or higher).

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/Pumpkin-cod/flie_management_bash.git
    cd file_backup_system
    ```

2. Make the script executable:
    ```bash
    chmod +x backup.sh
    ```

3. Run the script:
    ```bash
    ./backup.sh /path/to/source /path/to/destination
    ```

    - Replace `/path/to/source` with the directory or file you want to back up.
    - Replace `/path/to/destination` with the directory where backups will be stored.

## Configuration

- You can customize the backup behavior by modifying the `backup.sh` script.
- Logs are stored in the `logs` directory by default.

## Example

To back up a folder named `documents` to a folder named `backups`:
```bash
./backup.sh ~/documents ~/backups
```


