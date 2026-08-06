# Socket.sockaddr_un

### def Socket.sockaddr_un(path) -> String
### def Socket.pack_sockaddr_un(path) -> String

指定したアドレスを[socket#pack_string](../../../library/socket.md#pack_string)
で返します。

- **param** `path` -- パスを文字列で指定します。

```text title="例"
require 'socket'
p Socket.sockaddr_un("/tmp/.X11-unix/X0")
=> "\001\000/tmp/.X11-unix/X0\000...."
```
