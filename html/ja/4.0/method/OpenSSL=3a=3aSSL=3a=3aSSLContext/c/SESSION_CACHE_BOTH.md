# OpenSSL::SSL::SSLContext::SESSION_CACHE_BOTH

### const SESSION_CACHE_BOTH -> Integer

サーバ側、クライアント側両方でセッションをキャッシュすることを意味します。

[OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md) に渡すフラグとして用います。

実際には
[OpenSSL::SSL::SSLContext::SESSION_CACHE_SERVER](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_SERVER.md) と
[OpenSSL::SSL::SSLContext::SESSION_CACHE_CLIENT](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_CLIENT.md) のビット論理和を取った値です。
