#!/bin/bash

#un bucle es una extructura que hace 
#que el código se repita varias veces.

#Un bucle for es un bucle que se repite el bloque 
#de intrucciones 
#un número prederterminado de veces
#a eso se le llama cuerpo de bucle
#cada repetición=iteración
#i=iterar

echo -n "Escribe un número:  "
read limite

for (( i = 0; i < $limite; 1++ ))
#si queremos usar <= doble parentesis
#i es = a 0; i es menor que el límite; i se incrementa 1
do
    echo $i 
done





