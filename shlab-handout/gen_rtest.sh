#!/bin/bash

# Loop from 1 to 16
for i in {01..16}
do
   # Run the make command for each test and redirect output to a text file
   make rtest$i > rtest$i.txt
done