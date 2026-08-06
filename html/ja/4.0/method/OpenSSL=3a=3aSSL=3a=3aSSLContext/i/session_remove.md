# OpenSSL::SSL::SSLContext#session_remove

### def session_remove(sess) -> bool

セッションを [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 内部のキャッシュ領域から取り除きます。

成功時には真を返します。キャッシュ領域に存在しないセッションを削除しようとした場合は偽を返します。

- **param** `sess` -- 削除するセッション([OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md))
