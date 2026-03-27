#!/bin/bash
#цикл FOR перебор списка
    echo "----перебор списка значений----"
for fruit in "apple" "banana" "orange" "grape"
do
    echo "Фрукт: $fruit"
done

#цикл FOR числовой диапазон
    echo "----числовой диапазон----"
for i in {1..5}
do
    echo "Число: $i"
done

#С шагом
for i in {1..10..2}
do
    echo "Нечетное: $i"
done

#c+ синтаксис
for ((i=1; i<=5; i++))
do
    echo "Итерация: $i"
done

#Цикл FOR перебор файлов

for file in *.txt
do
  if [ -f "$file" ]; then  
    echo "Найден текстовый файл $file"
fi
done

#цикл FOR перебор результатов команды
    echo  "--перебор процессов--"
for process in $(ps aux | grep "bash" | awk '{print $2}') 
do
    echo "PID процесса BASH - $process"
done
