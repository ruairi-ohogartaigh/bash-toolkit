#!/bin/bash

#uname -a | grep -q "Ubuntu" && echo "Ubuntu detected" || echo "Not Ubuntu"

# Check if distro.csv exists
if [ ! -f distro.csv ]; then
    echo "distro.csv not found!"
    exit 1
fi

# Read and process each line of distro.csv
while IFS=, read -r field1 field2 field3; do
    if uname -a | grep -q "$field1"; then
        echo "This is a $field1 distribution."
        echo "You should use the following package managers: $field2 , $field3"
    else
        uname -a 
        echo "is not supported by this script, please append the distro.csv "
    fi
done < distro.csv