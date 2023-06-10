#!/bin/bash
# Notificació de missatges del sistema per Telegram usant un Bot

TOKEN="6110004324:AAFqdvnklVC1qz8LC25tPVkaLEGg6y2mkgg"
ID="5047375565"
MENSAJE=${1}
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"