# OpenSSL::SSL::VERIFY_NONE

### const VERIFY_NONE -> Integer

[OpenSSL::SSL::SSLContext#verify_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/verify_mode=3d.md) で指定できるフラグです。

サーバーモードであるかクライアントモードであるかによって意味がことなります。

サーバーモード: クライアントに証明書を要求せず、クライアントは証明書を送り返しません。

クライアントモード: サーバから受け取った証明書は検証されますが、失敗してもハンドシェイクは継続します。
ハンドシェイクの結果は [OpenSSL::SSL::SSLSocket#verify_result](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/verify_result.md) で取得できます。

このフラグは単独で用いられるべきです。
