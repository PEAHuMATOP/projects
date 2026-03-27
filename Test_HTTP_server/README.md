# Создание простейшего HTTP сервера
## 1.Подготовка
#проверяем список пакетов

		sudo apt update
#обновляем пакеты
  
		sudo apt dist-upgrade -y
#проверяем наличие Python 3

  		python3 --version
>[!NOTE]
> Python в ASTRA Linux обычно уже установлен по умолчанию

		
## 2.Подготавливаем рабочую директорию
#создаем папку для файлов
		mkdir ~/projects_EVS/Test_HTTP_server
#переходим в созданную папку

		cd ~/projekts_EVS/Test_HTTP_server
>[!NOTE]
> Путь к директории сервера можно создавать свой
		
#создаём тестовые файлы для демонстрации

		echo "Testing file for WEB server" > test_HTTP.txt
		echo "<html><body><h1>This is my first HTTP server</h1></body></html> > index.html
## 3.Запуск сервера
### 3.1 Первый вариант (на один раз-посмотреть, либо для временного использования)
#Запускаем из текущей директории

		python3 -m http.server 8080
### 3.2 Второй вариант (для постоянной работы, пока комп не сгорит :) )
#Запускаем в фоне (nohup), чтобы при закрытии терминальной сессии запущенный процесс оставался активным. Параллельно выводим данные из stdin в логфайл (tee). Запущенная с ключом -a не перезаписывает файл, а добавляет данные в конец. Конструкция 2>&1 перенаправляет stderr в указанный логфайл.

		cd ~/projekts_EVS/Test_HTTP_server
		nohup python3 -m http.server 8080 2>&1 | tee -a server.log
#проверяем запущенный процесс

		ps aux | grep python3
### 3.3 Чтобы каждый раз не делать многабукаф, делаем скрипт.
#создаем файл

		nano ~/start_HTTP_serv.sh
#копируем в него текст

		#!/bin/bash
		echo "Run HTTP-server on port 8080"
		echo "The files are available at http://your_IP:8080" 
		cd /home/administrator/projects_EVS/Test_HTTP_server
		nohup python3 -m http.server 8080 2>&1 | tee -a server.log
#делаем скрипт исполняемым

		chmod +x ~/start_HTTP_serv.sh
## 4.Проверяем работу
#на локальной машине

		curl  http://localhost:8080

#или в браузере

		http://localhost:8080

#для доступа с других устройств сети определяем адрес машины

		sudo ifconfig
## 5.Разные полезные команды
#для остановки сервера ищем процесс

		ps -e
		
<img width="881" height="142" alt="Screenshot_20260328_001003" src="https://github.com/user-attachments/assets/67833626-e2a3-409c-b16e-fa8ca4038d3b" />
#на скрине видно, что PID искомого процесса 9998 - килим его

		kill 9998

