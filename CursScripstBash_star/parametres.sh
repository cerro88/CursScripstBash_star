#!/bin/bash

#veurem com funcionen els paràmetres
PARAMETRE=${0}
#${0} ens indica el nom de l'executable
echo "el parametre 0 és ${0}"
#${1} és el primer paràmetre posicional
echo "el parametre 1 és ${1}"
#podeu escriure fins a 9 (verificar)
echo "el parametre 2 és ${2}"
parametre_sostingut=${#}
echo "el parametre ${parametre_sostingut} indica el número de parametres"
