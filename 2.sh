#!/bin/bash
#простое условие
echo "Введите число"
read number
if [ $number -gt 4 ]; then
    echo "Число больше 4"
fi
if [ $number -lt 4 ]; then
    echo "Число меньше 4"
fi
if [ $number -eq 4 ]; then
    echo "Число равно 4"
fi

#полная ветка if/else/elif
score=85
if [ $score -ge 90 ]; then
   echo "Оценка-A"
elif [ $score -ge 80 ]; then
   echo "Оценка-В"
elif [ $score -ge 70 ]; then
   echo "Оценка-С"
else echo "Оценка-F"
fi

#Проверка файлов 
file_name="test3.txt"
if [ -f "$file_name" ]; then
    echo "Файл $filename существует"
else 
    echo "Файл $filename не существует"
fi

#проверка директории
if [ -d /home/administrator ]; then
    echo "Директория существует"
else
echo "Директория не существует"
fi

#проверка атрибутов
    echo -n "Введите имя файла"
    read file_name
if [ -r $file_name ]; then
    echo "Файл доступен для чтения"
fi
if [ -w "$file_name" ]; then
    echo "Файл доступен для записи"
fi
if [ -x "$file_name" ]; then
    echo "Файл исполняемый"
fi
