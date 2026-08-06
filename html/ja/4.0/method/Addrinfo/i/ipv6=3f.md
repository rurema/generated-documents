# Addrinfo#ipv6?

### def ipv6? -> bool

アドレスが IPv6 のものならば true を返します。

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).ipv6? #=> false
p Addrinfo.tcp("::1", 80).ipv6?     #=> true
p Addrinfo.unix("/tmp/sock").ipv6?  #=> false
```

- **SEE** [Addrinfo#ipv4?](../../../method/Addrinfo/i/ipv4=3f.md), [Addrinfo#ip?](../../../method/Addrinfo/i/ip=3f.md)
