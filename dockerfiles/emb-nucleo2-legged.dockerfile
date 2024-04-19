FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=nointeractive
ENV TZ=America/Recife

# Platformio stuff:
ENV LANG=C.UTF-8

RUN apt update && apt upgrade -y

RUN apt install curl git build-essential -y

RUN apt-get update

# Install Python 3.6.9
RUN apt install python3.7 python3-pip python3.7-venv python3.7-dev -y

# Install PlatformIO
RUN /usr/bin/python3.7 -m pip install platformio==6.1.6

RUN apt install nano

# Install Framework Mbed 5.51105.220603 --> moved to the prepare_embedded_ws.sh
#ARG USER
#WORKDIR /home/$USER/.platformio/packages
#RUN git clone https://github.com/qleonardolp/framework-mbed-5.51105.220603.git framework-mbed
