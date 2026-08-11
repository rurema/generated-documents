# BasicSocket#local_address

### def local_address -> Addrinfo

[man:getsockname(2)] で得られたローカルアドレス情報を
[Addrinfo](../../../class/Addrinfo.md) オブジェクトとして返します。

返されたオブジェクトの [Addrinfo#protocol](../../../method/Addrinfo/i/protocol.md) は 0 を返すことに注意してください。

```ruby
require 'socket'

TCPSocket.open("www.ruby-lang.org", 80) {|s|
  p s.local_address # => #<Addrinfo: 192.168.0.129:36873 TCP>
}
  
TCPServer.open("127.0.0.1", 1512) {|serv|
  p serv.local_address # => #<Addrinfo: 127.0.0.1:1512 TCP>
}
```

- **SEE** [BasicSocket#getsockname](../../../method/BasicSocket/i/getsockname.md)
