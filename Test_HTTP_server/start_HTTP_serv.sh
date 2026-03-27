#!/bin/bash
echo "Run HTTP-server on port 8080"
echo "The files are available at http://your_IP:8080" 
cd /home/administrator/projects_EVS/Test_HTTP_server
python3 -m http.server 8080 2>&1 | tee server.log

