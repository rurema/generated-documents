# OpenSSL::SSL::SSLContext::SESSION_CACHE_CLIENT

### const SESSION_CACHE_CLIENT -> Integer

クライアント側セッションをキャッシュに追加することを意味します。

[OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md) に渡すフラグとして用います。

クライアント側においては、OpenSSL ライブラリがどのセッションを再利用するべきか確実に判定する方法はないので、再利用する場合は
[OpenSSL::SSL::SSLSocket#session=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/session=3d.md) によって明示的にセッションを指定しなければなりません。
