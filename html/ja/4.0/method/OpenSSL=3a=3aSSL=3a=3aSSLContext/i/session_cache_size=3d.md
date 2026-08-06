# OpenSSL::SSL::SSLContext#session_cache_size=

### def session_cache_size=(size)

自身が保持可能なセッションキャッシュのサイズを指定します。

size に 0 を渡すと制限なしを意味します。

デフォルトは 1024*20 で、20000 セッションまでキャッシュを保持できます。

- **param** `size` -- セッションキャッシュのサイズ(整数値)
- **SEE** [OpenSSL::SSL::SSLContext#session_cache_size](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_size.md)
