FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3.9
COPY script_ssh_python.py .
RUN python3 script_ssh_python.py
COPY . .
CMD ["python]