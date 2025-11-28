#!/bin/bash

# 1. Count lines from 1-input_data.txt using stdin
wc -l < 1-input_data.txt

# 2. Redirect stderr of cat on a non-existent file to 1-error_only.log
cat 1-file_does_not_exist.txt 2> 1-error_only.log

# 3. Redirect both stdout and stderr of ls on a non-existent directory to 1-all_output.log
ls /this/path/is/fake &> 1-all_output.log

# 4. Display the content of 1-error_only.log with a header
echo "-- Content of 1-error_only.log --"
cat 1-error_only.log

# 5. Display the content of 1-all_output.log with a header
echo "-- Content of 1-all_output.log --"
cat 1-all_output.log
