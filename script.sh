#!/bin/bash
# Скрипт мониторинга ресурсов

LOG_FILE="monitor.log"
SLEEP_TIME=5 # Пауза в секундах

while true; do
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> "$LOG_FILE"
    free -h >> "$LOG_FILE"
    df -h >> "$LOG_FILE"
    uptime >> "$LOG_FILE"
    sleep $SLEEP_TIME
done
