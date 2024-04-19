FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=nointeractive
ENV TZ=America/Recife

# Platformio stuff:
ENV LANG=C.UTF-8

RUN apt update && apt upgrade -y

RUN apt install curl git build-essential cmake make -y

RUN apt-get update

# Install Python 3.6.9
RUN apt install python3 python3-pip python3-venv python-dev -y

# Install PlatformIO
RUN /usr/bin/python3 -m pip install platformio==6.1.6

RUN apt install nano
