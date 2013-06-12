require 'socket'

# Create the server socket
# create
server = Socket.new :INET, :STREAM
addr = Socket.pack_sockaddr_in(4481, '0.0.0.0')
# bind
server.bind(addr)
# listen
server.listen(Socket::SOMAXCONN)

# Accept a new connection
connection, _ = server.accept

print 'Connection class: '
p connection.class

print 'Server fileno: '
p server.fileno

print 'Connection fileno: '
p connection.fileno

print 'Local address: '
p connection.local_address

print 'Remote address: '
p connection.remote_address
