#!/bin/bash

read -p "Enter your year of birth: " birth

minYear=1900
currentYear=$(date +'%Y')

if [[ "$birth" -le "$minYear" || "$birth" -gt "$currentYear" ]]; then
	echo "Your birth must ne more than $minYear and less than $currentYear"
	exit 1
fi

currentYear=$(date +'%Y')
((age=$currentYear-$birth))
echo "You are "$age" years old"
