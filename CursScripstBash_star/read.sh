#!/bin/bash

echo -n "Escribe un mensaje: "
#la opción -n impedirá un salto de línea 
#lo que hará que cuando aparezca
#Escribe un mensaje:
#se podrá escribir seguido a los dos puntos
#y no en la línea siguiente
read resultado
echo "Tu mensaje es: $resultado"
