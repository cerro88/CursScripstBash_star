#!/bin/bash
function usage(){
    echo "Tienes que introducir al dos parámetros"
    exit 1
}
#comprueba que  en numero de parámetros sea más grande o igual a dos
if [[ ${#} -ne 2 ]]
then
    usage
fi 

SUMA=$((${1}+${2}))
RESTA=$((${1}-${2}))
PRODUCTO=$((${1}*${2}))
DIVISION=$(echo " scale=2; ${1}/${2}" | bc)
 
echo "SUMA=${SUMA}"
echo "RESTA=${RESTA}"
echo "PRODUCTO=${PRODUCTO}"
echo "DIVISIÓN=${DIVISION}"
