#!/bin/bash

function usage(){
    echo "USAGE: you have to enter almist 2 parametres"
    echo "params_classe.sh x1 x2 [x3...]"
}
NUM_PARAM=$#
echo "el número de parámetros: $NUM_PARAM"
if [[ $NUM_PARAM -lt 2 ]]
then
    #error por el número de parámetros
    usage
fi
#FOR ESTRUCTURA DE CONTROL PARA ITERAR
for I in ${@}
do
    echo ${I}
done
