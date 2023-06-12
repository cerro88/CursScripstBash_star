#!/bin/bash
#nom del script script1.sh
#aquest script ha d'acceptar un màxim de dos paràmetres
#si rebem més de 2 paràmetres ens ha de donar una errada i sortir
#si rebem un paràmetre aquest serà el nostre nom, s'ha d'introduir en la variable NOM 
#si rebem un segon paràmetre aquest serà el LLINATGE i s'ha d'introduir dins aquesta variable
#al final l'script ha d'emetre un missatge per pantalla salundant a l'usuari

function usage(){
    echo "Intruccions: NOM COGNOM"
    echo "Màxim dos paràmetres"
    exit 1
}

NOM=${1}
LLINATGE=${2}

if [[ ${#} -gt 2 ]]
then 
    usage
elif [[ ${#} -eq 0 ]]
then 
    echo "Qui ets?"
else
    echo "Hola ${NOM} ${LLINATGE} "
fi
