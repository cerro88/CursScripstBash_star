#!/bin/bash

read -p "Introduce un número del 1 al 10: " X

if [[ ${X} -eq 3 ]]
then
    echo "Has ganado!"
else
    echo "Sigue intentandolo"
fi

