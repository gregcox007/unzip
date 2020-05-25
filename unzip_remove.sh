#!/bin/bash

# Step 1 - List the Zip Files
ls *.zip > files.txt

# Step 2 > Unzip the Files and Removes the Original Zip File
for zipfile in $(cat "files.txt")
do
  unzip "$zipfile"
  rm -rf "$zipfile"
done
