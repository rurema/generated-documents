# UNIXServer#sysaccept

### def sysaccept -> Integer

接続したクライアントのソケットをファイル記述子で返すことを除けば
[UNIXServer#accept](../../../method/UNIXServer/i/accept.md) と同じです。

```ruby title="例"
require 'socket'

UNIXServer.open("/tmp/s") {|serv|
  c = UNIXSocket.open("/tmp/s")
  p serv.sysaccept        # => 6
}
```
