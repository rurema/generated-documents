# OpenSSL::SSL::SSLContext::SESSION_CACHE_NO_INTERNAL_STORE

### const SESSION_CACHE_NO_INTERNAL_STORE -> Integer

セッションキャッシュを [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 内部のキャッシュ領域に保持しないことを意味します。

[OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md) に渡すフラグとして用います。

ハンドシェイクによってセッションが開始された場合にはそのセッションを [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 内部にキャッシュとして保持しますが、このフラグを有効にすると自動的にキャッシュされることはなくなります。
