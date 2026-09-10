# OpenSSL::PKey?.read

### module_function def read(string, pass = nil) -> OpenSSL::PKey::PKey
### module_function def read(io, pass = nil) -> OpenSSL::PKey::PKey

DER 形式または PEM 形式でエンコードされた鍵データを読み込み、適切な [OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) のサブクラスのインスタンスを返します。

- **param** `string` -- 任意の秘密鍵または公開鍵を含む、DER 形式または PEM 形式でエンコードされた文字列
- **param** `io` -- 任意の秘密鍵または公開鍵を含む、DER 形式または PEM 形式でエンコードされたデータを読み込む [IO](../../../class/IO.md) オブジェクト
- **param** `pass` -- string または io が暗号化された PEM 形式のリソースである場合に使うパスワード(省略可)
- **raise** `OpenSSL::PKey::PKeyError` -- 鍵の解析に失敗した場合に発生します

```ruby
require "openssl"
rsa = OpenSSL::PKey::RSA.generate(2048)
pkey = OpenSSL::PKey.read(rsa.public_to_der)
p pkey.class # => OpenSSL::PKey::RSA
```
