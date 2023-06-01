#!/bin/bash

PARAMETROS=${#} #CONTROL DE ESRRORES
#"NÚMERO DE PARAMETROS ${PARAMETROS}"
# Si el número de parametros no es igual a 2 quiero que salga 
# un error y salgas del programa
# Pero si hay dos parametros quiero que hagas una serie de operaciones
if [[ ${PARAMETROS} -ne 2 ]]
then
    echo "ERROR: tienes que introducir dos parámetros"
    exit 1
fi

X=${1}
Y=${2}
echo "se han introducido dos parámetros"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}"
