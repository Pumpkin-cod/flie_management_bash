# Bulk File Renamer

## Overview
The Bulk File Renamer is a command-line tool designed to rename multiple files in a directory efficiently. It simplifies the process of renaming files by applying consistent naming patterns or transformations.

## Features
- Rename files in bulk using a specified pattern.
- Add prefixes, suffixes, or replace parts of filenames.
- Support for custom scripts to define complex renaming rules.
- Handles errors gracefully and provides detailed logs.

## Prerequisites
- Bash (Unix shell)
- Basic understanding of command-line operations.

## Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/Pumpkin-cod/flie_management_bash.git
    ```
2. Navigate to the project directory:
    ```bash
    cd bulk_file_renamer
    ```
3. Ensure the script has executable permissions:
    ```bash
    chmod +x bulk_renamer.sh
    ```

## Usage
1. Place the files you want to rename in a directory.
2. Run the script with the desired options:
    ```bash
    ./bulk_renamer.sh [OPTIONS] [DIRECTORY]
    ```
    Replace `[OPTIONS]` with the desired flags and `[DIRECTORY]` with the target directory path.

### Example
To add a prefix "new_" to all files in the `documents` folder:
```bash
./bulk_renamer.sh -p "new_" ./documents
```

## Options
- `-p [PREFIX]`: Add a prefix to filenames.
- `-s [SUFFIX]`: Add a suffix to filenames.
- `-r [OLD] [NEW]`: Replace a substring in filenames.
- `-h`: Display help information.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

