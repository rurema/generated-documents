# OpenSSL::PKey::DH#public_key

### def public_key -> OpenSSL::PKey::DH

`self` の鍵パラメータ(p, g)だけを持つ新しい DH インスタンスを返します。

メソッド名に反して、返り値のオブジェクトは鍵パラメータのみを持ち、公開鍵(pub_key)は含まれません。

このメソッドは後方互換性のために提供されています。多くの場合、このメソッドを呼ぶ必要はありません。公開鍵をシリアライズしたい場合は [OpenSSL::PKey::PKey#public_to_pem](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/public_to_pem.md) や [OpenSSL::PKey::PKey#public_to_der](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/public_to_der.md) を使ってください。
パラメータを保持したまま鍵対を再生成したい場合は [OpenSSL::PKey?.generate_key](../../../method/OpenSSL=3a=3aPKey/m/generate_key.md) の利用を検討してください。

```ruby
require "openssl"
dh1 = OpenSSL::PKey::DH.generate(2048)
p dh1.priv_key.class # => OpenSSL::BN
dhcopy = dh1.public_key
p dhcopy.priv_key # => nil
```
