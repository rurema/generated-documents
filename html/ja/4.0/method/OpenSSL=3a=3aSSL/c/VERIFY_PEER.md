# OpenSSL::SSL::VERIFY_PEER

### const VERIFY_PEER -> Integer

[OpenSSL::SSL::SSLContext#verify_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md) で指定できるフラグです。

サーバーモードであるかクライアントモードであるかによって意味がことなります。

サーバーモード: サーバーはクライアントに証明書を要求します。
送られてきた証明書は検証されます。検証が失敗した場合、
TLS/SSL ハンドシェイクを即座に終了させます。
クライアントは要求を無視することも可能です。
[OpenSSL::SSL::VERIFY_FAIL_IF_NO_PEER_CERT](../../../method/OpenSSL=3a=3aSSL/c/VERIFY_FAIL_IF_NO_PEER_CERT.md) と同時に指定した場合はクライアントが要求を無視した場合にはハンドシェイクを即座に停止します。

クライアントモード: サーバーの証明書を検証します。
検証が失敗した場合、TLS/SSL ハンドシェイクを即座に終了させます。
サーバーが証明書を返さずに、anonymous cipher を用いる場合、
VERIFY_PEER は無視されます。ただし、anonymous cipher はデフォルトでは無効になっています。

anonymous cipher が有効であるかどうかは
[OpenSSL::SSL::SSLContext#ciphers=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ciphers=3d.md) で設定できます。
