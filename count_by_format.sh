#!/bin/bash
source_dir="$1"                  # Get the source directory from the first command line argument
format="$2"                      # format

count_by_format() {
    local current_dir="$1"
    local count_files=0
    echo "begin to count"
    for file in "$current_dir"/*."$format"; do  # Use wildcards to iterate through files in the directory
        if [ -f "$file" ]; then
        count_files=$[$count_files+1]
        fi
    done
    echo "temos $count_files do tipo $format"
}

count_by_format "$source_dir"