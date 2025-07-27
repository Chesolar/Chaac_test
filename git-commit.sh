#!/bin/bash

# Get current timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Path to README.md
README="README.md"

# Check if README.md exists
if [ -f "$README" ]; then
    echo "Appending timestamp to README.md..."
    echo "" >> "$README"                  # Add a blank line (optional)
    echo "Last updated: $TIMESTAMP" >> "$README"
else
    echo "README.md not found in current directory."
    exit 1
fi

# Git commands
echo "Committing changes..."
git pull
git add .
git commit -m "$TIMESTAMP"
git push