# OpenSSL::SSL::SSLContext::SESSION_CACHE_NO_AUTO_CLEAR

### const SESSION_CACHE_NO_AUTO_CLEAR -> Integer

[OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 内部のセッションキャッシュ領域を自動的にクリアしないことを意味します。

通常では255コネクションごとにキャッシュを破棄しますが、このフラグを有効にするとそれをしなくなります。
代わりに適当なタイミングで
[OpenSSL::SSL::SSLContext#flush_sessions](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/flush_sessions.md) を呼びキャッシュを破棄しなければなりません。

[OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md) に渡すフラグとして用います。
