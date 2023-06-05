#!/bin/bash

A=${1}
echo "A és ${A}"
B=${2}
echo "B és ${B}"

#DIVISIO=$((A/B))
echo " scale=2; ${A}/${B}" | bc
#división con decimales. Para hacer una división con decimales debemos usar 'scale= xdecimales'
#para que el programa de división se ejecute correctamente vamos a tener que redirigirlo a bc
#lo haremos a través de una tuberia o 'pipe'
#"bc" es una calculadora que se ejecuta en la línea de comandos
