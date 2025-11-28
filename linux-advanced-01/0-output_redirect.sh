#!/bin/bash

# Print to stdout
echo "Hello, World!"

# Overwrite the file with first line
echo "First line" > 0-first_output.txt

# Append second line
echo "Second line" >> 0-first_output.txt

# Display the file content
cat 0-first_output.txt
