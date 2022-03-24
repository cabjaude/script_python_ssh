FROM python:3-slim
RUN apt update
RUN pip install netmiko
ARG path="/home/python/teste_conexao.py"
COPY teste_conexao.py $path/
RUN chmod +x $path/teste_conexao.py
WORKDIR $path
