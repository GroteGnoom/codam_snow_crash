import socket, time
# create an INET, STREAMing socket
serversocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# bind the socket to a public host, and a well-known port
serversocket.connect(('localhost', 6969))
# become a server socket
while True:
    time.sleep(1)
    data = serversocket.recv(512)
    print(data)
