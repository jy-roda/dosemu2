FROM ubuntu:18.04
LABEL maintainer="contact@jeanyves.pro"
LABEL description="Ubuntu based image with dosemu 2 installed"
ARG DEBIAN_FRONTEND=noninteractive
RUN useradd -ms /bin/bash dosemu
RUN apt update
RUN apt upgrade -y
RUN apt-get install software-properties-common wget -y
RUN add-apt-repository ppa:dosemu2/ppa -y
RUN apt update
RUN apt install -y dosemu2
