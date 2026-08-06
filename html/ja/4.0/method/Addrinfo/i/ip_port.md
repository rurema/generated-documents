# Addrinfo#ip_port

### def ip_port -> Integer

ポート番号を整数で返します。

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).ip_port  #=> 80
p Addrinfo.tcp("::1", 80).ip_port        #=> 80
```

- **SEE** [Addrinfo#ip_address](../../../method/Addrinfo/i/ip_address.md), [Addrinfo#ip_unpack](../../../method/Addrinfo/i/ip_unpack.md)
