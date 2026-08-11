# TCPServer#sysaccept

### def sysaccept -> Integer

接続したクライアントのソケットをファイル記述子で返すことを除けば
[TCPServer#accept](../../../method/TCPServer/i/accept.md) と同じです。

```ruby title="例"
require 'socket'

TCPServer.open("", 0) {|serv|
  c = TCPSocket.new(*serv.addr.values_at(3,1))
  p serv.sysaccept        # => 6
}
```
