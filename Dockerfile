FROM ubuntu:20.04
RUN apt-get update -y &&  apt-get install python3 -y
RUN apt-get install -y git
