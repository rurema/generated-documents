# OpenSSL::SSL::SSLContext#session_cache_mode=

### def session_cache_mode=(mode)

セッションキャッシュのモードを指定します。

以下の定数のORを引数として渡します。
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_OFF](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_OFF.md)
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_CLIENT](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_CLIENT.md)
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_SERVER](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_SERVER.md)
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_BOTH](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_BOTH.md)
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_NO_AUTO_CLEAR](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_AUTO_CLEAR.md)
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_NO_INTERNAL](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_INTERNAL.md)
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_NO_INTERNAL_LOOKUP](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_INTERNAL_LOOKUP.md)
  - [OpenSSL::SSL::SSLContext::SESSION_CACHE_NO_INTERNAL_STORE](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/c/SESSION_CACHE_NO_INTERNAL_STORE.md)

デフォルト値は OpenSSL::SSL::SSLContext::SESSION_CACHE_SERVER です。

- **param** `mode` -- 設定するモード(整数値)
- **SEE** [OpenSSL::SSL::SSLContext#session_cache_mode](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode.md)
