#!/bin/bash
echo -n "Escribe un número:  "
read valor
if [ $valor -ge 10 -a $valor -le 40 ]; then
#-a = and
#cuando usamos -a "[ $valor -ge 10 -a $valor -le 40 ]"
#solo funcionará con un corchete
#[[ para cadenas]]
#[-a/-o]
#-o = or
echo "Tu número está en el rango [10,40]"
else
echo "Tu número no está en el rango [10,40]"
fi