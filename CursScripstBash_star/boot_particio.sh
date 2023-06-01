HOST=$(hostname)
IP=$(curl ifconfig.me)
PARTICIO=$(df -h /dev/sda1 | grep -m 2 "/dev/sda1" |tail -n 1)
echo ${IP}
MISSATGE="L'estat de la particio de la máquina ${HOST} amb data: $(date) és de: ${PARTICIO}
amb IP: ${IP}"
/home/belen/cursScriptsBash/telegram_missatge.sh "${MISSATGE}"