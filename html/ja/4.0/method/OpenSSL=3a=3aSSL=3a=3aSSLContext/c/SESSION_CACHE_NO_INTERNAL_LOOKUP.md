# OpenSSL::SSL::SSLContext::SESSION_CACHE_NO_INTERNAL_LOOKUP

### const SESSION_CACHE_NO_INTERNAL_LOOKUP -> Integer

サーバ側でセッションキャッシュが必要になった場合
[OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) が保持するキャッシュ領域を探索しないことを意味します。

[OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md) に渡すフラグとして用います。

このフラグを ON にすると、キャッシュの探索が必要になった場合必ずコールバック([OpenSSL::SSL::SSLContext#session_get_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_get_cb=3d.md)
で設定したもの)を呼ぶようになります。
