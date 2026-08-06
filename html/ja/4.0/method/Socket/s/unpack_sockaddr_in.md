# Socket.unpack_sockaddr_in

### def Socket.unpack_sockaddr_in(sockaddr) -> Array

[socket#pack_string](../../../library/socket.md#pack_string)を
unpack したアドレスを返します。返される値は [port, ipaddr]
の配列です。

- **param** `sockaddr` -- [socket#pack_string](../../../library/socket.md#pack_string)を指定します。

```text title="例"
require 'socket'
p Socket.unpack_sockaddr_in(Socket.sockaddr_in("echo", "localhost"))
=> [7, "127.0.0.1"]
p Socket.unpack_sockaddr_in(Socket.sockaddr_in("echo", "::1"))
=> [7, "::1"]
```
