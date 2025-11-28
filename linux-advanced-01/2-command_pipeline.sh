#!/bin/bash

# Count unique lines in 2-data.txt ignoring case
cat 2-data.txt | sort -f | uniq -i | wc -l
