# OpenSSL::SSL::VERIFY_CLIENT_ONCE

### const VERIFY_CLIENT_ONCE -> Integer

[OpenSSL::SSL::SSLContext#verify_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md) で指定できるフラグです。

サーバーモードであるかクライアントモードであるかによって意味がことなります。

サーバーモード: 最初の TLS/SSL ハンドシェイクの時だけクライアントに証明書を要求します。このフラグは VERIFY_PEER フラグとともに使われなければなりません。

クライアントモード: 無視されます。
