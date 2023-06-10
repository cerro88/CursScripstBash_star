#!/bin/bash

#ESCRIBE UN SCRIPT QUE RECORRA EL FICHERO numeros.txt
#muestre cuantas lineas tiene el fichero

NUMERO_LINEAS=0
SUMA=0
for linea in $(cat numeros.txt)
do
    NUMERO_LINEAS=$((NUMERO_LINEAS+1))
    SUMA=$((SUMA+linea))
done
echo "numero de lineas: ${NUMERO_LINEAS}"
echo "la suma val: ${SUMA}"
#MITJANA = SUMA DIVIDIT EL NUMERO DE LINEAS
MEDIA=$(echo "scale=2; ${SUMA}/${NUMERO_LINEAS}" | bc)
echo "la media vale ${MEDIA}"