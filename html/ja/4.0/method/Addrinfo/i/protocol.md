# Addrinfo#protocol

### def protocol -> Integer

ソケットプロトコルを整数で返します。

```ruby
require 'socket'

p Addrinfo.tcp("localhost", 80).protocol == Socket::IPPROTO_TCP #=> true
```
