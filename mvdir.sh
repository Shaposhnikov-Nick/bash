#!/bin/bash

# check arguments
if [ $# -ne 2 ]; then
    echo "Two arguments are needed"
    exit 1
fi

# check source directory exists
if [ ! -d "$1" ]; then
    echo "Error! $1 does not exist o not a directory"
    exit 1
fi

# check target directory exists
if [ ! -d "$2" ]; then
    echo "Error! $2 does not exist o not a directory"
    exit 1
fi

# copy source directory into target one and remove source directory
if cp -r "$1" "$2" && rm -rf "$1"; then
    echo "Directory $1 was successfully moved to $2"
    exit 0
else
    echo "Error!"
    exit 1
fi

