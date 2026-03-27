#!/bin/bash
#Конкатенация строк
first_name="Иван"
last_name="Иванов"
otchestvo="Иванович"
full_name="$last_name $first_name $otchestvo"
echo "ФИО: $full_name"

#арифметические операции
x=13
y=7
#для арифметических выражений используются (( ))
sum=$((x+y))
power=$((x^y))
echo "X+Y=$sum X^Y=$power"

#Переменные окружения
echo "Домашняя директория-  $HOME"
echo "Текущий пользователь-  $USER"

#переменная с специальными символами в имени, не рекомендуется, но можно
var_with_space="value with spaces"
echo "Переменная- ${var_with_space}"
