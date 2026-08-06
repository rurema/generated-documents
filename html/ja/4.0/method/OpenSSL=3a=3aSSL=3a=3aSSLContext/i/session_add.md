# OpenSSL::SSL::SSLContext#session_add

### def session_add(sess) -> bool

セッションを [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 内部のキャッシュ領域に追加します。

成功時には真を返します。すでにキャッシュ領域にあるセッションを追加しようとした場合は追加されずに偽を返します。

- **param** `sess` -- 追加するセッション([OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md))
