# OpenSSL::SSL::SSLContext#alpn_protocols

### def alpn_protocols -> [String] | nil
### def alpn_protocols=(protocols)

Application-Layer Protocol Negotiation(ALPN)で通知するプロトコル名の一覧を取得・設定します。

`alpn_protocols=` で設定した文字列の配列がハンドシェイク時に ALPN 拡張として送信されます。クライアント側で設定するものであり、サーバ側で設定しても効果はありません。設定しなかった場合、ハンドシェイクに ALPN 拡張は含まれません。

サーバ側でクライアントが提示したプロトコルから選択するには [OpenSSL::SSL::SSLContext#alpn_select_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/alpn_select_cb=3d.md) を使います。

```ruby title="例"
require 'openssl'
ctx = OpenSSL::SSL::SSLContext.new
ctx.alpn_protocols = ["http/1.1", "spdy/2", "h2"]
```

- **param** `protocols` -- 通知するプロトコル名の文字列の配列
- **SEE** [OpenSSL::SSL::SSLContext#alpn_select_cb=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/alpn_select_cb=3d.md), [OpenSSL::SSL::SSLSocket#alpn_protocol](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/alpn_protocol.md)
