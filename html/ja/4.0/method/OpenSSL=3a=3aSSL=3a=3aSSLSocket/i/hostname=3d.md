# OpenSSL::SSL::SSLSocket#hostname=

### def hostname=(hostname)

TLS の Server Name Indication(SNI) 拡張で利用するサーバのホスト名を設定します。

Server Name Indication については [RFC:3546] を参照してください。

このメソッドはハンドシェイク時にクライアント側がサーバ側にサーバのホスト名を伝えるために用います。そのため、クライアント側が [OpenSSL::SSL::SSLSocket#connect](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/connect.md) を呼ぶ前にこのメソッドでホスト名を指定する必要があります。

hostname に nil を渡すと SNI 拡張を利用しません。

サーバ側については [OpenSSL::SSL::SSLContext#servername_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/servername_cb=3d.md) を参照してください。

- **param** `hostname` -- ホスト名文字列
- **SEE** [OpenSSL::SSL::SSLSocket#hostname](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/hostname.md),
     [OpenSSL::SSL::SSLContext#servername_cb](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/servername_cb.md),
     [OpenSSL::SSL::SSLContext#servername_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/servername_cb=3d.md)
