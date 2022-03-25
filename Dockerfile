FROM python:3-slim
RUN apt update && apt install -y docker
RUN pip install netmiko
ARG path="/home/python"
COPY script_ssh_python.py $path/
RUN chmod +x $path/script_ssh_python.py
WORKDIR $path
