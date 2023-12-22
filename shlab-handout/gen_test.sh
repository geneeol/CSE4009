#!/bin/bash

# Loop from 1 to 16
for i in $(seq -w 1 16)
do
   # Run the make command for each test and redirect output to a text file
   make test$i > test$i.txt
done