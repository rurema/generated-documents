# OpenSSL::SSL::SSLServer#accept

### def accept -> OpenSSL::SSL::SSLSocket

クライアントからの接続を受け付け、接続した
SSLSocket オブジェクトを返します。

[OpenSSL::SSL::SSLServer#start_immediately](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLServer/i/start_immediately.md) が真ならば、
SSLSocket#accept を呼び TLS/SSL ハンドシェイクを実行してから
SSLSocket オブジェクトを返します。
