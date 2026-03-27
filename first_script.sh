#!/bin/bash
# Начало
echo "Всем привет!"
echo "Текущая дата: $(date)"
echo "Текущий пользователь: $USER"

# ОбЪявляем переменные
NAME=PEAHuMATOP
AGE=48
SCRIPT_DIR=$(pwd)
echo "Имя: $NAME"
echo "Возраст: $AGE"
echo "Директория: $SCRIPT_DIR"
echo "Домашняя директория: $HOME"
echo "Текущая оболочка: $SHELL"

# Ввод данных
echo "Введите имя:"
read USERNAME
echo "Добро пожаловать $USERNAME !"

read -p "Ваш возраст?" AGE
echo "Вам $AGE лет"
read -s -p "Введите пароль?" PASSWORD

echo
echo "Пароль принят"

# IF
read -p "Введите число" NUMBER
if [ $NUMBER -gt 20 ]; then
    echo "Число больше 20"
elif [ $NUMBER -eq 20 ]; then
    echo "Число равно 20"
else
    echo "Число меньше 20"
fi

# Проверка файла

FILE="/home/administrator/projects_EVS/first_script.sh"
if [ -f "$FILE" ]; then
     echo "Файл $FILE существует"
if [ -r "$FILE" ]; then
     echo "Файл доступен для чтения"
else
     echo "Файл не существует"
fi
fi
exit 0
