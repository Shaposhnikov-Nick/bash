#!/bin/bash

# read text file line by line up to line "Part3"

while read line
do
  if [ "$line" = "Part3" ]; then
	break
  fi

echo $line
done < pale_fire.txt
