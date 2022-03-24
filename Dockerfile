FROM python:3-slim
RUN apt update
RUN pip install netmiko
ARG path="/home/teste_conexao"
COPY teste_conexao.py $path/
RUN chmod +x $path/teste_conexao.py
WORKDIR $path
