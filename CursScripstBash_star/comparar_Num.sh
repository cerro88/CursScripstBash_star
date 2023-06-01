#!/bin/bash
echo -n "Escribe un número:  "
read valor
if [[ $valor -gt 5 ]]; then
#opciones que le podemos pasar al if
# -gt  > mayor que 5; -gt = greater than
# -lt  < menor que x; -lt = lower than
# -le < o = que x; -le = lower or equal
# -ge > o = que x; -ge = greater or equal
# -eq = que x ; -eq = equal
# -ne no = que x ; -ne = not equal
echo "Tu número es mayor que 5"
else
echo "Tu número es menor o igual a 5"
fi


#atajo:
#si escribimos comentarios sin # delante
#los seleccionamos todos ctrl+k+c y se pondrá #

#nota
# crear un archivo y darle permiso de ejecución 
# al mismo tiempo


#OPCIÓN -N EN ECHO...
