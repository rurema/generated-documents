# OpenSSL::PKey::PKey#encrypt

### def encrypt(data) -> String
### def encrypt(data, options) -> String

`self` の公開鍵の部分を使って data を暗号化します。

復号には [OpenSSL::PKey::PKey#decrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/decrypt.md) を使います。

- **param** `data` -- 暗号化する文字列
- **param** `options` -- OpenSSL に渡すアルゴリズム固有の制御用オプションを指定するハッシュです(省略可)。指定できる内容は OpenSSL のマニュアル `EVP_PKEY_CTX_ctrl_str(3)` を参照してください
- **return** -- 暗号化されたデータの文字列
- **raise** `OpenSSL::PKey::PKeyError` -- 暗号化に失敗した場合に発生します
- **SEE** [OpenSSL::PKey::PKey#decrypt](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/decrypt.md)

```ruby
require "openssl"
pkey = OpenSSL::PKey.generate_key("RSA", "rsa_keygen_bits" => 2048)
data = "secret data"
encrypted = pkey.encrypt(data, rsa_padding_mode: "oaep")
decrypted = pkey.decrypt(encrypted, rsa_padding_mode: "oaep")
p decrypted # => "secret data"
```
