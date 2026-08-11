# Addrinfo#pfamily

### def pfamily -> Integer

プロトコルファミリーを整数で返します。

```ruby
require 'socket'

p Addrinfo.tcp("localhost", 80).pfamily == Socket::PF_INET # => true
```
