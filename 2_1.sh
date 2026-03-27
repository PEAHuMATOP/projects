#!/bin/bash
#строковые сравнения
     echo "Введите первую  строку"
read string1
     echo "Введите вторую строку"
read string2
if [ "$string1" = "$string2" ]; then
     echo "Строки равны"
else 
     echo "Строки разные"
fi

#числовые сравнения
     echo "Введите первое  число"
read a
     echo "Введите второе число"
read b
if [ $a -eq $b ]; then echo "А равно В"; fi
if [ $a -ne $b ]; then echo "А не равно В"; fi
if [ $a -lt $b ]; then echo "А меньше В"; fi
if [ $a -le $b ]; then echo "А меньше или равно В"; fi
if [ $a -gt $b ]; then echo "А больше В"; fi
if [ $a -ge $b ]; then echo "А больше или равно В"; fi

#логические операторы
if [ $a -gt 5 ] && [ $a -lt 15 ]; then
    echo "А между 5 и 15"
fi
if [ $a -lt 5 ] || [ $a -gt 15 ]; then
    echo "А меньше 5 или больше 15"
fi
