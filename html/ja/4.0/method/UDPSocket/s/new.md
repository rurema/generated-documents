# UDPSocket.new

### def UDPSocket.open(address_family=Socket::AF_INET) -> UDPSocket
### def UDPSocket.new(address_family=Socket::AF_INET) -> UDPSocket

新しい UDP ソケットを返します。

address_family には Socket::AF_INET のような整数、:INET のようなシンボル、"INET" のような文字列を指定できます。

```ruby
require 'socket'

p UDPSocket.new                 # => #<UDPSocket:fd 3>
p UDPSocket.new(Socket::AF_INET6) # => #<UDPSocket:fd 4>
```

- **param** `address_family` -- ソケットのアドレスファミリー
