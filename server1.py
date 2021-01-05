import socket   
import os
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

ip = "192.168.43.200"
port = 5000
s.bind((ip, port))
while True:
    x = s.recvfrom(10)

    print(x[0].decode())