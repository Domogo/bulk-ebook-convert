#!/bin/bash

# Set default source and destination directories
DEFAULT_SOURCE_DIR="./input"
DEFAULT_DEST_DIR="./output"

# Use command-line arguments if provided, otherwise use defaults
SOURCE_DIR="${1:-$DEFAULT_SOURCE_DIR}"
DEST_DIR="${2:-$DEFAULT_DEST_DIR}"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

echo "Using source directory: $SOURCE_DIR"
echo "Using destination directory: $DEST_DIR"

# Loop through all files in the source directory
find "$SOURCE_DIR" -type f -not -path "$DEST_DIR/*" | while read -r book; do
    # Get the filename without the path
    filename=$(basename "$book")
    # Get the filename without the extension
    name="${filename%.*}"
    # Set the output filename
    output="$DEST_DIR/$name.azw3"
    
    # Convert the book to AZW3 format
    ebook-convert "$book" "$output"
    
    echo "Converted: $filename to AZW3"
done

echo "Conversion complete!"