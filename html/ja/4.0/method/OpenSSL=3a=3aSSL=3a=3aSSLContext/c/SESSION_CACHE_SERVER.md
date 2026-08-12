# OpenSSL::SSL::SSLContext::SESSION_CACHE_SERVER

### const SESSION_CACHE_SERVER -> Integer

サーバ側でセッションをキャッシュすることを意味します。

[OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md) に渡すフラグとして用います。

このフラグが立っているとサーバ側の [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md)
でセッションキャッシュの保持と管理、再利用が行われます。

このフラグはデフォルトで有効になっています。
