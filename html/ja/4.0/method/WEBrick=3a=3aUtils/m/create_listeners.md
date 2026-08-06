# WEBrick::Utils?.create_listeners

### module_function def create_listeners(address, port, logger = nil) -> [TCPServer]

与えられたアドレスとポートで [TCPServer](../../../class/TCPServer.md) オブジェクトを生成します。

- **param** `address` -- アドレスを指定します。

- **param** `port` -- ポート番号を指定します。

- **param** `logger` -- ロガーオブジェクトを指定します。

- **raise** `ArgumentError` -- port を指定しなかった場合に発生します。

- **SEE** [Socket.getaddrinfo](../../../method/Socket/s/getaddrinfo.md), [TCPServer](../../../class/TCPServer.md)
