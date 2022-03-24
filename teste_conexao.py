from netmiko import Netmiko

fw = {'host':'192.168.1.250',
          'username':'admin',
          'password':'admin',
          'device_type':'fortinet'
          }

print(f"{'#'*20} Conectando ao Firewall {'#'*20}")
net_connect = Netmiko(**fw)

config = ['config system interface',
          'edit port2',
          'set status up',
          'end'
          ]

send_config = net_connect.send_config_set(config)
print(send_config)

print(f"{'#'*20} Finalizado {'#'*20}")

print(f"{'*'*20} Status {'*'*20}")

command = 'show system interface port2'
full_config = net_connect.send_command(command)
print(full_config)

print(f"{'*'*20} Finalizado {'*'*20}")
