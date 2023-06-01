#!/bin/bash
#Scrip para que cada vez que se reinicia Debian
#me avisa por telegram

IP=$(curl ifconfig.me)
DATA=$(date)
HOST=$(hostname)
MISSATGE="S'ha reiniciat ${HOST} a data ${DATA} amb IP:${IP}"

