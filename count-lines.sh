#!/usr/bin/env bash

# Find all .java files
# Match only files with src/main in their path
# Pass the file list to cat; concatenate all of the files and print to standard out
# Match lines which are not empty
# Print newline count

find . -type f -name '*.java' | grep 'src/main' | xargs cat | grep -ve '^[[:blank:]]*$' | wc -l
