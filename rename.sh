#!/bin/bash
# rename file

# check arguments
if [ $# -ne 2 ]; then
	echo "Error! Need 2 arguments"
	exit 1
fi

# check file exists
if [ ! -f "$1" ]; then
	echo "$1 is not a file or does not exists"
	exit 1
fi

# check new file name
if [ ! -n "$2" ]; then
	echo "Empty new file name"
	exit 1
fi

# copy file with new name
if cp "$1"  "$2" && rm -f "$1" ; then
	echo "File renamed"
	exit 0
else
	echo "Error!"
	exit 1
fi
