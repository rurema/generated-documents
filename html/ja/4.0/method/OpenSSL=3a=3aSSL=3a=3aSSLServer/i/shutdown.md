# OpenSSL::SSL::SSLServer#shutdown

### def shutdown(how=Socket::SHUT_RDWR) -> 0

ソケットの以降の接続を終了させます。

詳しくは [BasicSocket#shutdown](../../../method/BasicSocket/i/shutdown.md) を参照してください。

- **param** `how` -- 接続の終了の仕方を Socket::SHUT_RD, Socket::SHUT_WR, 
           Socket::SHUT_RDWR などで指定します。
