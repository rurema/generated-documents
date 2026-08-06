# BasicSocket.do_not_reverse_lookup=

### def BasicSocket.do_not_reverse_lookup=(bool)

[BasicSocket#do_not_reverse_lookup](../../../method/BasicSocket/i/do_not_reverse_lookup.md) の値を変更します。

- **param** `bool` -- この値が真ならアドレスからホスト名への逆引きを行わなくなります。

```text title="例"
require 'socket'
  
p TCPSocket.new('localhost', 'telnet').addr
TCPSocket.do_not_reverse_lookup = true
p TCPSocket.new('localhost', 'telnet').addr
  
=> ["AF_INET", 2253, "localhost", "127.0.0.1"]
   ["AF_INET", 2254, "127.0.0.1", "127.0.0.1"]
```
