# BasicSocket#remote_address

### def remote_address -> Addrinfo

[man:getpeername(2)] で得られたリモートアドレス情報を
[Addrinfo](../../../class/Addrinfo.md) オブジェクトとして返します。

返されたオブジェクトの [Addrinfo#protocol](../../../method/Addrinfo/i/protocol.md) は 0 を返すことに注意してください。

```ruby
require 'socket'

TCPSocket.open("www.ruby-lang.org", 80) {|s|
  p s.remote_address # => #<Addrinfo: 221.186.184.68:80 TCP>
}
  
TCPServer.open("127.0.0.1", 1728) {|serv|
  c = TCPSocket.new("127.0.0.1", 1728)
  s = serv.accept
  p s.remote_address # => #<Addrinfo: 127.0.0.1:36504 TCP>
}
```

- **SEE** [BasicSocket#getpeername](../../../method/BasicSocket/i/getpeername.md)
