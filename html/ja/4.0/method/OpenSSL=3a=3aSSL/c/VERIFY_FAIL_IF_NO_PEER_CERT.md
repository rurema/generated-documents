# OpenSSL::SSL::VERIFY_FAIL_IF_NO_PEER_CERT

### const VERIFY_FAIL_IF_NO_PEER_CERT -> Integer

[OpenSSL::SSL::SSLContext#verify_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md) で指定できるフラグです。

サーバーモードであるかクライアントモードであるかによって意味がことなります。

サーバーモード: クライアントが証明書を返さない場合に 
TLS/SSL ハンドシェイクを即座に終了させます。
このフラグは VERIFY_PEER フラグとともに使われなければなりません。

クライアントモード: 無視されます。
