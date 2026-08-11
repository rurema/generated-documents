# Addrinfo#bind

### def bind -> Socket
### def bind{|sock| ... } -> object

自身のアドレスにバインドされたソケットを作成します。

ブロックが渡されたときにはそのブロックに生成された [Socket](../../../class/Socket.md)
オブジェクトが渡されます。ブロックの返り値がメソッドの返り値となります。
ブロックを省略した場合は、生成された [Socket](../../../class/Socket.md)
オブジェクトが返されます。

```ruby
require 'socket'

Addrinfo.udp("0.0.0.0", 9981).bind {|s|
  s.local_address.connect {|s| s.send "hello", 0 }
  p s.recv(10) # => "hello"
}
```
