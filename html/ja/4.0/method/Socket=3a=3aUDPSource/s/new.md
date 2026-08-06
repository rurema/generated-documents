# Socket::UDPSource.new

### def Socket::UDPSource.new(remote_addr, local_addr) {|msg| ... } -> Socket::UDPSource

Socket::UDPSource オブジェクトを生成します。

このメソッドはユーザは直接使いません。[Socket.udp_server_loop](../../../method/Socket/s/udp_server_loop.md) が内部で用います。

- **param** `remote_addr` -- リモートのアドレス([Addrinfo](../../../class/Addrinfo.md) オブジェクト)
- **param** `local_addr` -- ローカルのアドレス([Addrinfo](../../../class/Addrinfo.md) オブジェクト)
