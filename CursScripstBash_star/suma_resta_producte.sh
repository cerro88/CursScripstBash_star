#!/bin/bash

#aquest script ens mostra com
#este script nos enseña como
#this script teaches us how 
#realitzar les operacions aritmetiques
#realizar operaciones aritméticas
#to do arithmetic operations

read -p "introdueix el valor de x: " X
read -p "introdueix el valor de y: " Y
echo "Has introduit ${X} i ${Y}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}"
PRODUCTE=$((X*Y))
echo "${X}*${Y}=${PRODUCTE}"