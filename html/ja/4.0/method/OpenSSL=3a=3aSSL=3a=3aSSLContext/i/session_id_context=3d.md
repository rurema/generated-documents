# OpenSSL::SSL::SSLContext#session_id_context=

### def session_id_context=(id_context)

セッション ID コンテキストを文字列で設定します。

セッション ID コンテキストは、セッションをグループ化するための識別子で、セッション ID コンテキストとセッション ID の両方が一致する場合に同一のセッションであると判別されます。
この [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) オブジェクトで生成されたコネクション([OpenSSL::SSL::SSLSocket](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md))に関連付けられたセッションはセッション ID コンテキストを共有します。

セッション ID コンテキストはセッションのグループを識別するための識別子であり、一方セッション ID は各セッションを識別するための識別子であり、この2つは異なる概念であることに注意してください。

クライアント側では意味を持ちません。

- **param** `id_context` -- セッション ID コンテキスト文字列(最大32バイト)
- **SEE** [OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md),
     [OpenSSL::SSL::SSLContext#session_id_context](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_id_context.md),
     [OpenSSL::SSL::SSLContext#session_cache_mode=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_cache_mode=3d.md)
