#!/bin/bash

# cowsay + fortune

while true
do
	echo "Who do you wont advice from?"
	cat << options
bunny
tux
daemon	
kitty
vader-koala
stop -for exit
options
echo

	read -p "Your choice: " option
	
	if [ "$option" = "stop" ]; then
		echo "Exit!"
		break
	fi	       
	
	fortune | cowsay -f $option
echo
done
