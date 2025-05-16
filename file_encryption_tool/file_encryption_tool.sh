#!/bin/bash

# filepath: /Users/catherinegyamfi/Desktop/Amalitech/bash_assignment/file_encryption_tool/file_encryption_tool.sh

# Function to display usage instructions
usage() {
    echo "Usage: $0 [encrypt|decrypt] [file] [password]"
    echo "Encrypts or decrypts a file using OpenSSL."
    exit 1
}

# Check if the correct number of arguments is provided
if [[ $# -ne 3 ]]; then
    usage
fi

# Operation (encrypt or decrypt)
OPERATION=$1
FILE=$2
PASSWORD=$3

# Check if the file exists
if [[ ! -f "$FILE" ]]; then
    echo "Error: File $FILE does not exist."
    exit 1
fi

# Perform encryption or decryption
case $OPERATION in
    encrypt)
        openssl enc -aes-256-cbc -salt -in "$FILE" -out "${FILE}.enc" -pass pass:"$PASSWORD"
        if [[ $? -eq 0 ]]; then
            echo "File successfully encrypted: ${FILE}.enc"
        else
            echo "Error: Encryption failed."
        fi
        ;;
    decrypt)
        OUTPUT_FILE="${FILE%.enc}"
        openssl enc -aes-256-cbc -d -in "$FILE" -out "$OUTPUT_FILE" -pass pass:"$PASSWORD"
        if [[ $? -eq 0 ]]; then
            echo "File successfully decrypted: $OUTPUT_FILE"
        else
            echo "Error: Decryption failed. Check your password or file."
        fi
        ;;
    *)
        echo "Error: Invalid operation. Use 'encrypt' or 'decrypt'."
        usage
        ;;
esac
