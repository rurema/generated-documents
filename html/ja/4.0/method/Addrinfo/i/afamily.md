# Addrinfo#afamily

### def afamily -> Integer

アドレスファミリーを整数で返します。

```ruby
require 'socket'

p Addrinfo.tcp("localhost", 80).afamily == Socket::AF_INET #=> true
```
