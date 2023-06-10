#!/bin/bash
function usage(){
    echo "Tienes que introducir al menos dos parámetros"
    exit 1
}
#comprueba que  en numero de parámetros sea más grande o igual a dos
if [[ ${#} -le 2 ]]
then
    usage
elif [[ ${#} -eq 2 ]]
then
    SUMA=$((${1}+${2}))
    RESTA=$((${1}-${2}))
    PRODUCTO=$((${1}*${2}))
    DIVISION=$(echo " scale=2; ${1}/${2}" | bc)
else
    #quiero sacar el promedio de los parametros si es mayor que dos
    #????
    #for?

fi 
 
echo "SUMA=${SUMA}"
echo "RESTA=${RESTA}"
echo "PRODUCTO=${PRODUCTO}"
echo "DIVISIÓN=${DIVISION}"
