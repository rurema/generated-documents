# Addrinfo#ip_address

### def ip_address -> String

IP アドレスを文字列で返します。

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).ip_address  #=> "127.0.0.1"
p Addrinfo.tcp("::1", 80).ip_address        #=> "::1"
```

- **SEE** [Addrinfo#ip_port](../../../method/Addrinfo/i/ip_port.md), [Addrinfo#ip_unpack](../../../method/Addrinfo/i/ip_unpack.md)
