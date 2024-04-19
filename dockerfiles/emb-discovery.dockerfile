FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=nointeractive
ENV TZ=America/Sao_Paulo

# Platformio stuff:
ENV LANG=C.UTF-8

RUN apt update && apt upgrade -y

RUN apt install curl git build-essential -y

RUN apt-get update

# Install Python 3.7
RUN apt install python3.7 python3-pip python3.7-venv python3.7-dev -y

# Install PlatformIO
RUN /usr/bin/python3.7 -m pip install platformio==6.1.6

# Install text editor
RUN apt install nano

# Install Framework Mbed <-- PRECISA DE UMA platformio.ini, ENTÃO O REPOSITÓRIO DEVE SER CLONADO ANTES
# RUN pio pkg install --tool "platformio/framework-mbed"

# Install Framework Mbed 5.51105.220603 --> moved to the prepare_embedded_ws.sh
#ARG USER
#WORKDIR /home/$USER/.platformio/packages
#RUN git clone https://github.com/qleonardolp/framework-mbed-5.51105.220603.git framework-mbed
