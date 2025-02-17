#!/bin/bash

crear_estructura(){
	read -p "¿Quieres ejecutar el programa [s/n]?" respuesta

	cd /home/dam67/sistemas/linux/ejrcicios

	mkdir ut3_2

	cd ut3_2

	mkdir VEHICULOS BARCOS

	cd BARCOS

	mkdir LANCHA VELEROS YATES

	cd ../VEHICULOS

	mkdir 2RUEDAS 4RUEDAS

	mkdir ./2RUEDAS/BICI ./2RUEDAS/MOTO
	
	mkdir ./4RUEDAS/COCHE ./4RUEDAS/FURGONETA

}

read -n1 -p "¿Quieres ejecutar el programa [s/n]?" respuesta
if [[ $respuesta == 's' ]]; then
	crear_estructura
	cd /home/dam67/sistemas/linux
	tree >> /home/dam67/sistemas/linux/results/ut3_2Result.txt
	clear
	read -n1 -p "Estructura creada. Pulsa una tecla para continuar..."
else
	echo "No quieres crear la estructura"
fi		
