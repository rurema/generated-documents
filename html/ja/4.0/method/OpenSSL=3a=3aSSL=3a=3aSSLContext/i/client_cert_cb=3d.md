# OpenSSL::SSL::SSLContext#client_cert_cb=

### def client_cert_cb=(cb)

[OpenSSL::SSL::SSLContext#cert=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/cert=3d.md) でクライアント証明書をセットしていなかった場合にサーバからクライアント証明書の要求が来たときに呼びだされるコールバックオブジェクトを設定します。

コールバックに渡される引数は以下のように

```ruby invalid
proc{|sslsocket| ... }
```

1つで、利用している [OpenSSL::SSL::SSLSocket](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md)
オブジェクトが渡されます。そのオブジェクトから必要な証明書を見つけるのに必要な情報を取得します。
コールバックはクライアント証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md))
とその秘密鍵([OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md))のペアの配列を返さなければなりません。

証明書と鍵が見付からない場合は nil を返してください。
また、このコールバック内で例外が発生すると、適当な証明書が見付からなかったと判断されます。このとき例外は OpenSSL のライブラリによって握り潰されてしまいます。

デフォルトは nil で、コールバックなしを意味します。この場合はクライアント証明書は利用されません。

このメソッドはクライアント側でのみ意味を持ちます。

```ruby title="例"
require 'openssl'
ctx = OpenSSL::SSL::SSLContext.new(ssl_method)
ctx.client_cert_cb = proc{|sslsocket|
  # sslsocket からコネクションの情報を取り出し、
  # クライアント証明書(cert)とその秘密鍵(privkey)を探しだす
  [cert, privkey]
}
```

- **param** `cb` -- コールバックオブジェクト([Proc](../../../class/Proc.md)、[Method](../../../class/Method.md) など)
- **SEE** [OpenSSL::SSL::SSLContext#client_cert_cb](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/client_cert_cb.md)
