#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))
VIDES=3

########################################################
# Escriu el teu codi aqui
########################################################
while [[ ${VIDES} -ne 0 ]]
do
read -p "Introdueix un número: " introduit
if [ ${introduit} -eq ${adivina} ]
then 
    echo "Eureka!"
    exit 0
fi
if [ ${introduit} -lt ${adivina} ]
then
    echo "fred"
else
    echo "Calent"
fi
#restar una vida
VIDES=$((VIDES-1))
done
echo "Vides: ${VIDES}"

########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"