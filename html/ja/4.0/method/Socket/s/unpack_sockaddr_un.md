# Socket.unpack_sockaddr_un

### def Socket.unpack_sockaddr_un(sockaddr) -> String

[socket#pack_string](../../../library/socket.md#pack_string)を
unpack したソケットパス名を返します。

- **param** `sockaddr` -- [socket#pack_string](../../../library/socket.md#pack_string)を指定します。

```text title="例"
require 'socket'
p Socket.unpack_sockaddr_un(Socket.sockaddr_un("/tmp/.X11-unix/X0"))
=> "/tmp/.X11-unix/X0"
```
