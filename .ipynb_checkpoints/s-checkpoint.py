import socket

#udp protocol
my_prot = socket.SOCK_DGRAM

#net address family: ipv4
afn = socket.AF_INET


s = socket.socket(afn, my_prot)


ip = '192.168.43.200'
port = 5000


s.bind((ip,port))

x = s.recvfrom(1024)
print(x)
