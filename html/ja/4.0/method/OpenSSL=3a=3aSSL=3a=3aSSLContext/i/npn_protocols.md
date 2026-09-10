# OpenSSL::SSL::SSLContext#npn_protocols

### def npn_protocols -> [String] | nil
### def npn_protocols=(protocols)

Next Protocol Negotiation(NPN)で通知するプロトコル名の一覧を取得・設定します。

サーバ側でのみ効果があります。設定しなかった場合、ハンドシェイクで NPN 拡張は送信されません。

```ruby title="例"
require 'openssl'
ctx = OpenSSL::SSL::SSLContext.new
ctx.npn_protocols = ["http/1.1", "spdy/2"]
```

- **param** `protocols` -- 通知するプロトコル名の文字列の配列
- **SEE** [OpenSSL::SSL::SSLSocket#npn_protocol](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/npn_protocol.md)
