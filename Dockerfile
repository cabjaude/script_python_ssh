FROM python:3-slim
RUN apt update
RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \ 
  && tar xzvf docker-17.04.0-ce.tgz \ 
  && mv docker/docker /usr/local /bin \ 
  && rm -r docker docker-17.04.0-ce.tgz
RUN pip install netmiko
ARG path="/home/python"
COPY script_ssh_python.py $path/
RUN chmod +x $path/script_ssh_python.py
WORKDIR $path
