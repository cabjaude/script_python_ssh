FROM ubuntu:20.04
RUN apt-get update -y &&  apt-get install python3 -y
COPY script_ssh_python.py .
CMD python3 script_ssh_python.py
