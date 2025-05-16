# File Encryption Tool

## Overview
This project is a Bash-based file encryption tool designed to securely encrypt and decrypt files. It provides a simple and efficient way to protect sensitive data using encryption techniques.

## Features
- Encrypt files with a secure encryption algorithm.
- Decrypt files back to their original state.
- User-friendly command-line interface.
- Handles multiple file types.

## Prerequisites
- Bash shell (version 4.0 or higher).
- OpenSSL installed on your system.

## Usage
1. Clone the repository:
    ```bash
    git clone <repository_url>
    cd file_encryption_tool
    ```

2. Make the script executable:
    ```bash
    chmod +x encrypt.sh decrypt.sh
    ```

3. Encrypt a file:
    ```bash
    ./encrypt.sh <file_to_encrypt>
    ```

4. Decrypt a file:
    ```bash
    ./decrypt.sh <file_to_decrypt>
    ```

## Example
To encrypt a file named `example.txt`:
```bash
./encrypt.sh example.txt
```

To decrypt the file:
```bash
./decrypt.sh example.txt.enc
```

## Notes
- Ensure you remember the encryption password, as it is required for decryption.
- Always test the tool on non-critical files before using it on important data.
