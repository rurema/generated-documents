# OpenSSL::SSL::SSLSocket#session=

### def session=(sess)

ハンドシェイクで再利用する SSL セッションを設定します。

このメソッドはクライアント側でのみ有用です。
セッションを再利用する場合は、
[OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md) を呼ぶ前にこのメソッドでセッションオブジェクト
([OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md) のインスタンス)
を設定します。

サーバ側の場合 [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) がキャッシュの保持と管理を行います。

- **param** `sess` -- 設定するセッション
- **SEE** [OpenSSL::SSL::SSLSocket#session](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/session.md),
     [OpenSSL::SSL::SSLSocket#session_reused?](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/session_reused=3f.md)
