#!/bin/bash
#obteniu la vostra ip pública amb la comanda curl ifconfig.me i guardau-la en la variable IP
IP=$(curl ifconfig.me)
#enviau aquesta ip pública al vostre bot de telegram.
MENSAJE="${IP}"
/home/belen/Code/CursScripstBash_star/CursScripstBash_star/bot_mensaje.sh ${MENSAJE}
#envia al bot de telegram el token del teu bot
TOKEN="6110004324:AAFqdvnklVC1qz8LC25tPVkaLEGg6y2mkgg"
MENSAJE="${TOKEN}"
/home/belen/Code/CursScripstBash_star/CursScripstBash_star/bot_mensaje.sh ${MENSAJE}

#envia al bot de telegram el teu id
ID="5047375565"
MENSAJE=${ID}
/home/belen/Code/CursScripstBash_star/CursScripstBash_star/bot_mensaje.sh ${MENSAJE}
#envia al bot de telegram el teu nom
 NOM=$(whoami)
 MENSAJE="${NOM}" 

 /home/belen/Code/CursScripstBash_star/CursScripstBash_star/bot_mensaje.sh ${MENSAJE}


