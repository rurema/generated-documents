# Socket#bind

### def bind(my_sockaddr) -> 0

ソケットを my_sockaddr に結合します。[man:bind(2)]
と同じ働きをします。

- **param** `my_sockaddr` -- [socket#pack_string](../../../library/socket.md#pack_string)もしくは[Addrinfo](../../../class/Addrinfo.md)オブジェクトを指定します。
- **return** -- 0 を返します。
