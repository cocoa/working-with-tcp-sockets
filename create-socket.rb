#!/usr/bin/env ruby

require 'socket'

ip4_socket = Socket.new(Socket::AF_INET, Socket::SOCK_STREAM)
puts "ip4 socket:#{ip4_socket}"

ip6_socket = Socket.new(:INET6, :STREAM)
puts "ip6 socket:#{ip6_socket}"
