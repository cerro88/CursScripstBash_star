#!/bin/bash
#El nom del script ha de ser script2.sh
#Aquest script ha d'admetre un paràmetre i només un
#en cas de no rebre un paràmetre s'ha de sortir i emetre una errada
#el paràmetre acceptat és un any de naixement i s'ha de guardar en la variable ANY_NAIXEMENT
#Aquest script ha de calcular l'edat de la data introduida i guardar-la en la variable EDAT
#El script ens ha de demanar que introduim el nostre nom i guardar-lo en la variable NOM
#El script ha de donar un missatge per pantalla del tipus "GUILLEM tens 47 anys" (per exemple)

function usage(){
    echo "Instrucions: ANY DE NAIXEMENT 'AAAA'"
    exit 1
}

ANY_NAIXEMENT=${1}
ANY_ACTUAL=2023

if [[ ${#} -eq 0 ]]
then
    usage
fi

echo "El teu any de naixement és ${1}"
RESTA=$(( ANY_ACTUAL - ANY_NAIXEMENT ))
read -p "Introdueix el teu nom: " NOM



echo "Hola ${NOM}, tens $RESTA anys!"


