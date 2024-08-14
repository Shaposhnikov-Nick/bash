#!/bin/bash

# compare 3 integer values

read -p "Enter 3 int values: " int1 int2 int3

if [ $int1 -ge $int2 ]; then 
	max_int=$int1
else
	max_int=$int2
fi

if [ $int3 -ge $max_int ]; then
	max_int=$int3
fi

echo "Max value: $max_int"
