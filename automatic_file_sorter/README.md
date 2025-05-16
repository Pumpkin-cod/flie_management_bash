# Automatic File Sorter

## Overview

The Automatic File Sorter is a Bash script designed to organize files in a specified directory by sorting them into subfolders based on their file types. This tool helps maintain a clean and organized workspace by automatically categorizing files.

## Features

- Automatically sorts files into folders based on their extensions.
- Supports multiple file types (e.g., documents, images, videos, etc.).
- Customizable directory paths and file type categories.
- Lightweight and easy to use.

## Prerequisites

- A Unix-based operating system (Linux or macOS).
- Bash shell installed (default on most Unix systems).

## Installation

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/yourusername/automatic_file_sorter.git
    ```
2. Navigate to the project directory:
    ```bash
    cd automatic_file_sorter
    ```

## Usage

1. Make the script executable:
    ```bash
    chmod +x sorter.sh
    ```
2. Run the script and specify the target directory:
    ```bash
    ./sorter.sh /path/to/your/directory
    ```
3. The script will create subfolders and move files into them based on their types.

## Customization

- You can edit the `sorter.sh` script to add or modify file type categories.
- Update the `extensions` array in the script to include additional file extensions.

## Example

Before running the script:
```
/example-directory
  file1.jpg
  file2.pdf
  file3.mp4
```

After running the script:
```
/example-directory
  /Images
     file1.jpg
  /Documents
     file2.pdf
  /Videos
     file3.mp4
```

