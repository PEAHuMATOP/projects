#!/bin/bash
#Цикл Until - выполняется до истинности условия
count=1
until [ $count -gt 5 ]
do    echo "Count: $count"
    count=$((count+1))
done

#Практический пример - ожидание доступности сервиса
    echo "Ожидание запуска сервиса"
attempt=1
until ping -c 5 google.com | cut -d '=' -f 4
do
    echo "Попытка $attempt : Сервис недоступен"
    sleep 2
    attempt=$((attempt + 1))
if [ $attempt -gt 10 ]; then
    echo "Сервис недоступен после 10 попыток"
    exit 1
fi
done
    echo "Сервис доступен"
