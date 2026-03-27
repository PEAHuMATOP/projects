#!/bin/bash
#Цикл While с условием
echo "ВВедите число"
read a
while [ $a -le 15 ]
do
    echo "Счетчик -  $a"
    a=$((a++))
done
