# OpenSSL::SSL::SSLServer#start_immediately=

### def start_immediately=(bool)

[OpenSSL::SSL::SSLServer#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/accept.md) で
accept したらすぐに TLS/SSL ハンドシェイクを実行するかどうかを設定します。

これを真に設定した場合は、[OpenSSL::SSL::SSLServer#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/accept.md) で接続したソケットに対し [OpenSSL::SSL::SSLSocket#accept](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/accept.md) を呼び、ハンドシェイクを実行します。

デフォルトでは true です。

- **param** `bool` -- 設定する真偽値。
- **SEE** [OpenSSL::SSL::SSLServer#start_immediately](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/start_immediately.md)
