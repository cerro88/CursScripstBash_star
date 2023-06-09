#!/bin/bash

NUMEROS_QUE_GENERAR=0
if [[ ${#} -eq 0 ]]
then
    NUMEROS_QUE_GENERAR=10
elif [[ ${#} -eq 1 ]]
then
    NUMEROS_QUE_GENERAR=${1}
fi

URL="https://www.random.org/integers/?num=${NUMEROS_QUE_GENERAR}&min=1&max=100&col=1&base=10&format=plain&rnd=new"


SUMA=0
MAX=101
MIN=0
for NUMERO in $(curl -s ${URL})
do 
    echo "el valor del número és ${NUMERO}"
    SUMA=$((SUMA+NUMERO))
if [[ ${NUMERO} -lt ${MAX} ]]
then
    MIN=${NUMERO}
fi

if [[ ${NUMERO} -gt ${MAX} ]]
then
    MAX=${NUMERO}
fi

done
    echo "SUMA=${SUMA}"
    echo "MIN=${MIN}"
    echo "MAX=${MAX}"
    MITJANA=$(echo "scale=3; ${SUMA}/${NUMEROS_QUE_GENERAR}" | bc)
    echo "MITJANA=${MITJANA}"

MISSATGE="La mitjana es: ${MITJANA}"
/home/belen/Code/CursScripstBash_star/CursScripstBash_star/boot-mensaje.sh "${MISSATGE}"
#se usa el script que envia un mensaje


