# Socket::NI_DGRAM

### const NI_DGRAM -> Integer

The service specified is a datagram service (looks up UDP ports)。

[Socket.getnameinfo](../../../method/Socket/s/getnameinfo.md), [Addrinfo#getnameinfo](../../../method/Addrinfo/i/getnameinfo.md) の引数 flags に渡す定数です。

```ruby
require 'socket'
  
p Socket.getnameinfo([ Socket::AF_INET, 514, "127.0.0.1"], Socket::NI_DGRAM)
# => ["localhost", "syslog"]
p Socket.getnameinfo([ Socket::AF_INET, 514, "127.0.0.1"])
# => ["localhost", "shell"]
```

- **SEE** [man:getnameinfo(3)]
