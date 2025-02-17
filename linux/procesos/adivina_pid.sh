#!/bin/bash

pid_scipt=$$
intentos=0
echo "Has entrado al script: $pid_script" $$
read -n1 -p "Pulsa una tecla..."

while [[ true ]]; do
	clear
	if [[ intentos -eq 11 ]]; then
		read -n1 -p "Has agotado los 10 intentos"
		break
	read -p "Indica el PID" user_pid
	((intentos++))
	echo "Has utilizado $intentos intentos"
	
	if [[ $pid_script -eq $user_pid ]]; then
		((intentos++))
		echo "Has utilizado $intentos intentos"
		read -n1 -p "Has acertado!"
		break
	elif [[ $pid_script -eq $user_pid ]]; then
		((intentos++))
		echo "Has utilizado $intentos intentos"
		read -n1 -p "Has fallado, el PID es mayor"
	elif [[ $pid_script -eq $user_pid ]]; then
		echo "Has utilizado $intentos intentos"
		read -n1 -p "Has fallado, el PID es menor"
	fi
