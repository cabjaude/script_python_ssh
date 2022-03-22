import paramiko
address = '192.168.1.72'
username = 'vagrant'
password = 'vagrant'
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(hostname=address, username=username, password=password)
stdin, stdout, stderr = ssh.exec_command('ping -c 5 8.8.8.8')
stdin.close()
for line in stdout.readlines():
    print(line.replace('\n',''))