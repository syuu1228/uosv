s = TCPSocket.open("www.kame.net", 80)
s.write("GET / HTTP/1.0\r\n\r\n")
puts s.read
s.close
