# Addrinfo#ipv4?

### def ipv4? -> bool

アドレスが IPv4 のものならば true を返します。

- **SEE** [Addrinfo#ip?](../../../method/Addrinfo/i/ip=3f.md), [Addrinfo#ipv6?](../../../method/Addrinfo/i/ipv6=3f.md)

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).ipv4? # => true
p Addrinfo.tcp("::1", 80).ipv4?     # => false
p Addrinfo.unix("/tmp/sock").ipv4?  # => false
```
