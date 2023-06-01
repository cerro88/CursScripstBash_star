#!/bin/bash

PASSWORD=${RANDOM}
echo "password como número aleatorio: ${PASSWORD}"

PASSWORD=${RANDOM}${RANDOM}${RANDOM}
echo "password como tres números aleatorios: ${PASSWORD}"

#sha256sum
PASSWORD=$(date +%s%N | sha256sum | head -c10)
echo "${PASSWORD}"
