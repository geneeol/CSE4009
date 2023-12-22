#!/bin/bash

# File to store the output
output_file="comparison_results.txt"

# Clear the contents of the output file if it exists, or create it if it doesn't
> "$output_file"

# Loop from 1 to 16
for i in $(seq -w 1 16)
do
   # Append a header for each comparison
   echo "Comparing rtest$i.txt and test$i.txt:" >> "$output_file"

   # Append the differences to the output file
   diff -y --suppress-common-lines rtest$i.txt test$i.txt >> "$output_file"

   # Append a separator
   echo "----------------------------------------\n" >> "$output_file"
done

echo "Comparison completed. Results are stored in $output_file"
