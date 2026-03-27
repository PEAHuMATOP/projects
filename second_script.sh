#!/bin/bash
# Простой цикл
for I in 1 2 3 4 5 6 7 8 9; do
     echo "Итерация $I"
done

#Цикл по файлам
for file in *.txt; do
     echo "Обрабатываю файл $file"
done

#Цикл с диапазоном
for i in {1..10}; do
     echo "Число $i"
done

#Цикл While
while read line; do
     echo "Строка: $line"
done < /home/administrator/projects_EVS/test1.txt

#Цикл с условием
count=0
while [ $count -ge -10 ]; do
     echo "Счетчик: $count"
     ((count--))
done

