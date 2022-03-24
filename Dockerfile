FROM python:3-slim
RUN apt update
RUN pip install netmiko
ARG path="/home/teste_conexao"
COPY script_ssh_python.py $path/
RUN chmod +x $path/script_ssh_python.py
WORKDIR $path
