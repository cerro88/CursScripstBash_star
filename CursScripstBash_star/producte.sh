#!/bin/bash

A=${1}
echo "A és ${A}"
B=${2}
echo "B és ${B}"
PRODUCTE=$((A*B))
echo "${A}*${B}=${PRODUCTE}"
#"alerta amb les cometes"