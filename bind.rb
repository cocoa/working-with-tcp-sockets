require 'socket'

# Create a new TCP IP4 Socket.
socket = Socket.new :INET, :STREAM

# Create a C struct to hold the address for listening.
addr = Socket.pack_sockaddr_in(4481, '127.0.0.1')

# Bind the socket to the address
socket.bind(addr)
