#!/bin/bash
#определение функции
greet_user() {
local name=$1
echo "Привет, $name"
return 0
}


#С возвращаемым значением
check_file() {
if [ -f "$1" ]; then
   return 0
else
   return 1
fi
}

greet_user "Валера"
if check_file "/home/administrator/projects_EVS/test4.txt"; then
    echo "Файл существует"
else
    echo "Файл не найден"
fi
