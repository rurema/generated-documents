# Addrinfo#unix?

### def unix? -> bool

アドレスが Unix domain socket のものならば true を返します。

```ruby
require 'socket'

p Addrinfo.tcp("127.0.0.1", 80).unix? #=> false
p Addrinfo.tcp("::1", 80).unix?     #=> false
p Addrinfo.unix("/tmp/sock").unix?  #=> true
```

- **SEE** [Addrinfo#ip?](../../../method/Addrinfo/i/ip=3f.md)
