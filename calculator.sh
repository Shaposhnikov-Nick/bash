#!/bin/bash

read -p "Enter first value: " val1
read -p "Enter second value: " val2
read -p "Enter operator: " operator 

case $operator in
	"+" ) echo " $val1 + $val2 =" $(expr "$val1" + "$val2") ;;
	"*" ) echo " $val1 * $val2 =" $(expr "$val1" \* "$val2") ;;
	"-" ) echo " $val1 - $val2 =" $(expr "$val1" - "$val2") ;;
	"/" ) if [ "$val2" -eq 0 ]; then 
			echo "Divide by zero!"
			exit 1
		else
			echo " $val1 / $val2 =" $(expr "$val1" / "$val2")
		fi ;;
	"**" ) echo " $val1 ** $val2 =" $(( "$val1" ** "$val2" )) ;;

	* )  echo "unknown operator!"
esac  
