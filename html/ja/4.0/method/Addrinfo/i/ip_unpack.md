# Addrinfo#ip_unpack

### def ip_unpack -> [String, Integer]

IP アドレスとポート番号を 2 要素の配列で返します。

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).ip_unpack  #=> ["127.0.0.1", 80]
p Addrinfo.tcp("::1", 80).ip_unpack        #=> ["::1", 80]
```

- **SEE** [Addrinfo#ip_address](../../../method/Addrinfo/i/ip_address.md), [Addrinfo#ip_port](../../../method/Addrinfo/i/ip_port.md)
