#!/bin/bash

read -p "Enter your year of birth: " birth

if [ $birth -le 1900 ]; then
	echo "Your birth must ne more than 1900"
	exit 1
fi

currentYear=$(date +'%Y')
((age=$currentYear-$birth))
echo "You are "$age" years old"
