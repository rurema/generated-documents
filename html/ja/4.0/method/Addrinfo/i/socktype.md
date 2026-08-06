# Addrinfo#socktype

### def socktype -> Integer

ソケットタイプを整数で返します。

```ruby
require 'socket'

p Addrinfo.tcp("localhost", 80).socktype == Socket::SOCK_STREAM #=> true
```
