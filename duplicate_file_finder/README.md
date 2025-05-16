# Duplicate File Finder

This project is a Bash script designed to identify and manage duplicate files within a specified directory. It helps save storage space by locating files with identical content.

## Features

- Scans a directory and its subdirectories for duplicate files.
- Compares files based on their content, not just filenames.
- Outputs a list of duplicate files for review.

## Prerequisites

- A Unix-based operating system (Linux or macOS).
- Bash shell installed (default on most Unix systems).

## Usage

1. Clone this repository or download the script.
2. Open a terminal and navigate to the script's directory.
3. Run the script with the following command:

    ```bash
    ./duplicate_file_finder.sh /path/to/directory
    ```

    Replace `/path/to/directory` with the path of the directory you want to scan.

4. Review the output to identify duplicate files.

## Example

```bash
./duplicate_file_finder.sh ~/Documents
```

This command scans the `Documents` folder in your home directory for duplicate files.

## Notes

- Ensure the script has executable permissions. You can set this with:

  ```bash
  chmod +x duplicate_file_finder.sh
  ```

- Use caution when deleting files to avoid accidental data loss.

## Contributions

Contributions are welcome! Feel free to submit issues or pull requests to improve the script.
