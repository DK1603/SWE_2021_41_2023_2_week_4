#!/bin/bash

files_dir="./files"

sorted_files=$(find "$files_dir" -type f | sort -t/ -k1,1 -s) #1st column as the sortring key


for file in $sorted_files; do
    first_letter=$(basename "$file" | cut -c1 | tr '[:lower:]' '[:upper:]') 
    #cut -c1 for character selection
    #tr to change case of characters (lowercase -> uppercase and vice versa)
    mv "$file" "$first_letter"/"$(basename "$file")"
done

echo "Sorting is completed."


