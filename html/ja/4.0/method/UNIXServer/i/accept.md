# UNIXServer#accept

### def accept -> UnixSocket

クライアントからの接続要求を [man:accept(2)]で待ち受け、接続した
[UNIXSocket](../../../class/UNIXSocket.md) のインスタンスを返します。

```ruby title="例"
require 'socket'

UNIXServer.open("/tmp/s") {|serv|
  c = UNIXSocket.open("/tmp/s")
  s = serv.accept
  s.write "from server"
  c.write "from client"
  p c.recv(20)    #=> "from server"
  p s.recv(20)    #=> "from client"
}
```
