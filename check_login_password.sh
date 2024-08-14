#!/bin/bash

read -p  "Enter username: " username

if [ "$username" = "admin" ]; then
	read -s -p "Enter password: " password
	if [ "$password" = "123" ]; then
        	echo -e "\nOK!"
	else
		echo "Invalid password!"
		exit 1
	fi
else
	echo "invalid username!"
fi

