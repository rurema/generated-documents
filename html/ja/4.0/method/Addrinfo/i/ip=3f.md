# Addrinfo#ip?

### def ip? -> bool

アドレスが IP (v4/v6) のものならば true を返します。

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).ip? #=> true
p Addrinfo.tcp("::1", 80).ip?     #=> true
p Addrinfo.unix("/tmp/sock").ip?  #=> false
```

- **SEE** [Addrinfo#ipv4?](../../../method/Addrinfo/i/ipv4=3f.md), [Addrinfo#ipv6?](../../../method/Addrinfo/i/ipv6=3f.md), [Addrinfo#unix?](../../../method/Addrinfo/i/unix=3f.md)
