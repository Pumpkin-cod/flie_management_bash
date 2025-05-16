# Disk Space Analyzer

This project is a Bash script designed to analyze disk space usage on a system. It provides insights into the storage consumption of directories and files, helping users manage their disk space effectively.

## Features

- Analyze disk space usage for directories and files.
- Display results in a human-readable format.
- Sort and filter results based on size or other criteria.
- Option to save the analysis report to a file.

## Prerequisites

- A Unix-based operating system (Linux, macOS, etc.).
- Bash shell (version 4.0 or higher).
- Basic knowledge of command-line usage.

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/disk_space_analyzer.git
    ```
2. Navigate to the project directory:
    ```bash
    cd disk_space_analyzer
    ```
3. Ensure the script has executable permissions:
    ```bash
    chmod +x disk_space_analyzer.sh
    ```

## Usage

Run the script using the following command:
```bash
./disk_space_analyzer.sh [options] [directory]
```

### Options:
- `-h` : Display help information.
- `-s` : Sort results by size.
- `-t` : Display the top N largest files/directories.
- `-o <file>` : Save the output to a specified file.

### Example:
Analyze the `/home` directory and display the top 10 largest items:
```bash
./disk_space_analyzer.sh -t 10 /home
```

